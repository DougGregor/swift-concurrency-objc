
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
@available(macOS 10.8, *)
class GKTurnBasedParticipant : NSObject {
  @available(macOS 10.10, *)
  var player: GKPlayer? { get }
  var lastTurnDate: Date? { get }
  var status: GKTurnBasedParticipant.Status { get }
  var matchOutcome: GKTurnBasedMatch.Outcome
  @available(macOS 10.8, *)
  var timeoutDate: Date? { get }
}
extension GKTurnBasedParticipant {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "use player")
  var playerID: String? { get }
}
protocol GKTurnBasedEventListener {
  @available(macOS 10.10, *)
  @asyncHandler optional func player(_ player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  @available(macOS 10.10, *)
  @asyncHandler optional func player(_ player: GKPlayer, receivedTurnEventFor match: GKTurnBasedMatch, didBecomeActive: Bool)
  @available(macOS 10.8, *)
  optional func player(_ player: GKPlayer, matchEnded match: GKTurnBasedMatch)
  @available(macOS 10.10, *)
  optional func player(_ player: GKPlayer, receivedExchangeRequest exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(macOS 10.10, *)
  optional func player(_ player: GKPlayer, receivedExchangeCancellation exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(macOS 10.10, *)
  optional func player(_ player: GKPlayer, receivedExchangeReplies replies: [GKTurnBasedExchangeReply], forCompletedExchange exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(macOS 10.11, *)
  optional func player(_ player: GKPlayer, wantsToQuitMatch match: GKTurnBasedMatch)
}
@available(macOS 10.9, *)
var GKTurnTimeoutDefault: TimeInterval
@available(macOS 10.9, *)
var GKTurnTimeoutNone: TimeInterval
@available(macOS 10.8, *)
class GKTurnBasedMatch : NSObject {
  var matchID: String { get }
  var creationDate: Date { get }
  var participants: [GKTurnBasedParticipant] { get }
  var status: GKTurnBasedMatch.Status { get }
  var currentParticipant: GKTurnBasedParticipant? { get }
  var matchData: Data? { get }
  @available(macOS 10.10, *)
  func setLocalizableMessageWithKey(_ key: String, arguments: [String]?)
  var message: String?
  @available(macOS 10.8, *)
  var matchDataMaximumSize: Int { get }
  @available(macOS 10.10, *)
  var exchanges: [GKTurnBasedExchange]? { get }
  @available(macOS 10.10, *)
  var activeExchanges: [GKTurnBasedExchange]? { get }
  @available(macOS 10.10, *)
  var completedExchanges: [GKTurnBasedExchange]? { get }
  @available(macOS 10.10, *)
  var exchangeDataMaximumSize: Int { get }
  @available(macOS 10.10, *)
  var exchangeMaxInitiatedExchangesPerPlayer: Int { get }
  class func find(for request: GKMatchRequest, withCompletionHandler completionHandler: @escaping (GKTurnBasedMatch?, Error?) -> Void)
  class func find(for request: GKMatchRequest) async throws -> GKTurnBasedMatch?
  class func loadMatches(completionHandler: (([GKTurnBasedMatch]?, Error?) -> Void)? = nil)
  class func loadMatches() async throws -> [GKTurnBasedMatch]?
  @available(macOS 10.8, *)
  class func load(withID matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(macOS 10.8, *)
  class func load(withID matchID: String) async throws -> GKTurnBasedMatch?
  @available(macOS 10.9, *)
  func rematch(completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(macOS 10.9, *)
  func rematch() async throws -> GKTurnBasedMatch?
  @available(macOS 10.8, *)
  func acceptInvite(completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(macOS 10.8, *)
  func acceptInvite() async throws -> GKTurnBasedMatch?
  @available(macOS 10.8, *)
  func declineInvite(completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.8, *)
  func declineInvite() async throws
  func remove(completionHandler: ((Error?) -> Void)? = nil)
  func remove() async throws
  func loadMatchData(completionHandler: ((Data?, Error?) -> Void)? = nil)
  func loadMatchData() async throws -> Data?
  @available(macOS 10.9, *)
  func endTurn(withNextParticipants nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.9, *)
  func endTurn(withNextParticipants nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data) async throws
  @available(macOS 10.9, *)
  func participantQuitInTurn(with matchOutcome: GKTurnBasedMatch.Outcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.9, *)
  func participantQuitInTurn(with matchOutcome: GKTurnBasedMatch.Outcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data) async throws
  func participantQuitOutOfTurn(with matchOutcome: GKTurnBasedMatch.Outcome, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  func participantQuitOutOfTurn(with matchOutcome: GKTurnBasedMatch.Outcome) async throws
  func endMatchInTurn(withMatch matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  func endMatchInTurn(withMatch matchData: Data) async throws
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "pass GKLeaderboardScore to endMatchInTurnWithMatchData:scores:completionHandler instead")
  func endMatchInTurn(withMatch matchData: Data, scores: [GKScore]?, achievements: [GKAchievement]?, completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "pass GKLeaderboardScore to endMatchInTurnWithMatchData:scores:completionHandler instead")
  func endMatchInTurn(withMatch matchData: Data, scores: [GKScore]?, achievements: [GKAchievement]?) async throws
  @available(macOS 11.0, *)
  func endMatchInTurn(withMatch matchData: Data, leaderboardScores scores: [GKLeaderboardScore], achievements: [Any], completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func endMatchInTurn(withMatch matchData: Data, leaderboardScores scores: [GKLeaderboardScore], achievements: [Any]) async throws
  @available(macOS 10.8, *)
  func saveCurrentTurn(withMatch matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.8, *)
  func saveCurrentTurn(withMatch matchData: Data) async throws
  @available(macOS 10.10, *)
  func saveMergedMatch(_ matchData: Data, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func saveMergedMatch(_ matchData: Data, withResolvedExchanges exchanges: [GKTurnBasedExchange]) async throws
  @available(macOS 10.10, *)
  func sendExchange(to participants: [GKTurnBasedParticipant], data: Data, localizableMessageKey key: String, arguments: [String], timeout: TimeInterval, completionHandler: ((GKTurnBasedExchange?, Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func sendExchange(to participants: [GKTurnBasedParticipant], data: Data, localizableMessageKey key: String, arguments: [String], timeout: TimeInterval) async throws -> GKTurnBasedExchange?
  @available(macOS 10.10, *)
  func sendReminder(to participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String], completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func sendReminder(to participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String]) async throws
}
@available(macOS 10.10, *)
enum GKTurnBasedExchangeStatus : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case unknown
  case active
  case complete
  case resolved
  case canceled
}
@available(macOS 10.10, *)
var GKExchangeTimeoutDefault: TimeInterval
@available(macOS 10.10, *)
var GKExchangeTimeoutNone: TimeInterval
@available(macOS 10.10, *)
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
  @available(macOS 10.10, *)
  func cancel(withLocalizableMessageKey key: String, arguments: [String], completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func cancel(withLocalizableMessageKey key: String, arguments: [String]) async throws
  @available(macOS 10.10, *)
  func reply(withLocalizableMessageKey key: String, arguments: [String], data: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func reply(withLocalizableMessageKey key: String, arguments: [String], data: Data) async throws
}
@available(macOS 10.10, *)
class GKTurnBasedExchangeReply : NSObject {
  var recipient: GKTurnBasedParticipant { get }
  var message: String? { get }
  var data: Data? { get }
  @available(macOS 10.10, *)
  var replyDate: Date { get }
}
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use registerListener on GKLocalPlayer with an object that implements the GKTurnBasedEventListener protocol")
protocol GKTurnBasedEventHandlerDelegate {
  @available(macOS, introduced: 10.8, deprecated: 10.10)
  func handleInvite(fromGameCenter playersToInvite: [String])
  @available(macOS, introduced: 10.9, deprecated: 10.10)
  @asyncHandler func handleTurnEvent(for match: GKTurnBasedMatch, didBecomeActive: Bool)
  @available(macOS, introduced: 10.8, deprecated: 10.10)
  optional func handleMatchEnded(_ match: GKTurnBasedMatch)
}
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use registerListener on GKLocalPlayer with an object that implements the GKTurnBasedEventListener protocol")
class GKTurnBasedEventHandler : NSObject {
  @available(macOS, introduced: 10.8, deprecated: 10.10)
  class func shared() -> GKTurnBasedEventHandler
  @available(macOS, introduced: 10.8, deprecated: 10.10)
  weak var delegate: @sil_weak (GKTurnBasedEventHandlerDelegate & NSObjectProtocol)?
}
