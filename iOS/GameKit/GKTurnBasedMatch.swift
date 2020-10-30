
extension GKTurnBasedMatch {
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case open
    case ended
    case matching
  }
  enum Outcome : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case quit
    case won
    case lost
    case tied
    case timeExpired
    case first
    case second
    case third
    case fourth
    case customRange
  }
}
extension GKTurnBasedParticipant {
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case invited
    case declined
    case matching
    case active
    case done
  }
}
@available(iOS 5.0, *)
class GKTurnBasedParticipant : NSObject {
  @available(iOS 8.0, *)
  var player: GKPlayer? { get }
  var lastTurnDate: Date? { get }
  var status: GKTurnBasedParticipant.Status { get }
  var matchOutcome: GKTurnBasedMatch.Outcome
  @available(iOS 6.0, *)
  var timeoutDate: Date? { get }
}
extension GKTurnBasedParticipant {
  @available(iOS, introduced: 5.0, deprecated: 8.0, message: "use player")
  var playerID: String? { get }
}
protocol GKTurnBasedEventListener {
  @available(iOS 8.0, *)
  @asyncHandler optional func player(_ player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  @available(iOS 7.0, *)
  @asyncHandler optional func player(_ player: GKPlayer, receivedTurnEventFor match: GKTurnBasedMatch, didBecomeActive: Bool)
  @available(iOS 5.0, *)
  optional func player(_ player: GKPlayer, matchEnded match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(_ player: GKPlayer, receivedExchangeRequest exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(_ player: GKPlayer, receivedExchangeCancellation exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(iOS 7.0, *)
  optional func player(_ player: GKPlayer, receivedExchangeReplies replies: [GKTurnBasedExchangeReply], forCompletedExchange exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(iOS 9.0, *)
  optional func player(_ player: GKPlayer, wantsToQuitMatch match: GKTurnBasedMatch)
  @available(iOS, introduced: 7.0, deprecated: 8.0, message: "use didRequestMatchWithOtherPlayers")
  @asyncHandler optional func player(_ player: GKPlayer, didRequestMatchWithPlayers playerIDsToInvite: [String])
}
@available(iOS 6.0, *)
var GKTurnTimeoutDefault: TimeInterval
@available(iOS 6.0, *)
var GKTurnTimeoutNone: TimeInterval
@available(iOS 5.0, *)
class GKTurnBasedMatch : NSObject {
  var matchID: String { get }
  var creationDate: Date { get }
  var participants: [GKTurnBasedParticipant] { get }
  var status: GKTurnBasedMatch.Status { get }
  var currentParticipant: GKTurnBasedParticipant? { get }
  var matchData: Data? { get }
  @available(iOS 7.0, *)
  func setLocalizableMessageWithKey(_ key: String, arguments: [String]?)
  var message: String?
  @available(iOS 6.0, *)
  var matchDataMaximumSize: Int { get }
  @available(iOS 7.0, *)
  var exchanges: [GKTurnBasedExchange]? { get }
  @available(iOS 7.0, *)
  var activeExchanges: [GKTurnBasedExchange]? { get }
  @available(iOS 7.0, *)
  var completedExchanges: [GKTurnBasedExchange]? { get }
  @available(iOS 7.0, *)
  var exchangeDataMaximumSize: Int { get }
  @available(iOS 7.0, *)
  var exchangeMaxInitiatedExchangesPerPlayer: Int { get }
  class func find(for request: GKMatchRequest, withCompletionHandler completionHandler: @escaping (GKTurnBasedMatch?, Error?) -> Void)
  class func find(for request: GKMatchRequest) async throws -> GKTurnBasedMatch
  class func loadMatches(completionHandler: (([GKTurnBasedMatch]?, Error?) -> Void)? = nil)
  class func loadMatches() async throws -> [GKTurnBasedMatch]
  @available(iOS 5.0, *)
  class func load(withID matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(iOS 5.0, *)
  class func load(withID matchID: String) async throws -> GKTurnBasedMatch
  @available(iOS 6.0, *)
  func rematch(completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(iOS 6.0, *)
  func rematch() async throws -> GKTurnBasedMatch
  @available(iOS 5.0, *)
  func acceptInvite(completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(iOS 5.0, *)
  func acceptInvite() async throws -> GKTurnBasedMatch
  @available(iOS 5.0, *)
  func declineInvite(completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 5.0, *)
  func declineInvite() async throws
  func remove(completionHandler: ((Error?) -> Void)? = nil)
  func remove() async throws
  func loadMatchData(completionHandler: ((Data?, Error?) -> Void)? = nil)
  func loadMatchData() async throws -> Data
  @available(iOS 6.0, *)
  func endTurn(withNextParticipants nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 6.0, *)
  func endTurn(withNextParticipants nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data) async throws
  @available(iOS 6.0, *)
  func participantQuitInTurn(with matchOutcome: GKTurnBasedMatch.Outcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 6.0, *)
  func participantQuitInTurn(with matchOutcome: GKTurnBasedMatch.Outcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data) async throws
  func participantQuitOutOfTurn(with matchOutcome: GKTurnBasedMatch.Outcome, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  func participantQuitOutOfTurn(with matchOutcome: GKTurnBasedMatch.Outcome) async throws
  func endMatchInTurn(withMatch matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  func endMatchInTurn(withMatch matchData: Data) async throws
  @available(iOS, introduced: 6.0, deprecated: 14.0, message: "pass GKLeaderboardScore to endMatchInTurnWithMatchData:scores:completionHandler instead")
  func endMatchInTurn(withMatch matchData: Data, scores: [GKScore]?, achievements: [GKAchievement]?, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS, introduced: 6.0, deprecated: 14.0, message: "pass GKLeaderboardScore to endMatchInTurnWithMatchData:scores:completionHandler instead")
  func endMatchInTurn(withMatch matchData: Data, scores: [GKScore]?, achievements: [GKAchievement]?) async throws
  @available(iOS 14.0, *)
  func endMatchInTurn(withMatch matchData: Data, leaderboardScores scores: [GKLeaderboardScore], achievements: [Any], completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func endMatchInTurn(withMatch matchData: Data, leaderboardScores scores: [GKLeaderboardScore], achievements: [Any]) async throws
  @available(iOS 6.0, *)
  func saveCurrentTurn(withMatch matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 6.0, *)
  func saveCurrentTurn(withMatch matchData: Data) async throws
  @available(iOS 7.0, *)
  func saveMergedMatch(_ matchData: Data, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func saveMergedMatch(_ matchData: Data, withResolvedExchanges exchanges: [GKTurnBasedExchange]) async throws
  @available(iOS 7.0, *)
  func sendExchange(to participants: [GKTurnBasedParticipant], data: Data, localizableMessageKey key: String, arguments: [String], timeout: TimeInterval, completionHandler: ((GKTurnBasedExchange?, Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func sendExchange(to participants: [GKTurnBasedParticipant], data: Data, localizableMessageKey key: String, arguments: [String], timeout: TimeInterval) async throws -> GKTurnBasedExchange
  @available(iOS 7.0, *)
  func sendReminder(to participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String], completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func sendReminder(to participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String]) async throws
}
@available(iOS 7.0, *)
enum GKTurnBasedExchangeStatus : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case unknown
  case active
  case complete
  case resolved
  case canceled
}
@available(iOS 7.0, *)
var GKExchangeTimeoutDefault: TimeInterval
@available(iOS 7.0, *)
var GKExchangeTimeoutNone: TimeInterval
@available(iOS 7.0, *)
class GKTurnBasedExchange : NSObject {
  var exchangeID: String { get }
  var sender: GKTurnBasedParticipant { get }
  var recipients: [GKTurnBasedParticipant] { get }
  var status: GKTurnBasedExchangeStatus { get }
  var message: String? { get }
  var data: Data? { get }
  var sendDate: Date { get }
  var timeoutDate: Date? { get }
  var completionDate: Date? { get }
  var replies: [GKTurnBasedExchangeReply]? { get }
  @available(iOS 7.0, *)
  func cancel(withLocalizableMessageKey key: String, arguments: [String], completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func cancel(withLocalizableMessageKey key: String, arguments: [String]) async throws
  @available(iOS 7.0, *)
  func reply(withLocalizableMessageKey key: String, arguments: [String], data: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func reply(withLocalizableMessageKey key: String, arguments: [String], data: Data) async throws
}
@available(iOS 7.0, *)
class GKTurnBasedExchangeReply : NSObject {
  var recipient: GKTurnBasedParticipant { get }
  var message: String? { get }
  var data: Data? { get }
  @available(iOS 8.0, *)
  var replyDate: Date { get }
}
