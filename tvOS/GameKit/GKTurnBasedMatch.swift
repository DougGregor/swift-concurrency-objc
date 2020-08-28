
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
@available(tvOS 5.0, *)
class GKTurnBasedParticipant : NSObject {
  @available(tvOS 8.0, *)
  var player: GKPlayer? { get }
  var lastTurnDate: Date? { get }
  var status: GKTurnBasedParticipant.Status { get }
  var matchOutcome: GKTurnBasedMatch.Outcome
  @available(tvOS 6.0, *)
  var timeoutDate: Date? { get }
}
extension GKTurnBasedParticipant {
}
protocol GKTurnBasedEventListener {
  @available(tvOS 8.0, *)
  optional func player(_ player: GKPlayer, didRequestMatchWithOtherPlayers playersToInvite: [GKPlayer])
  @available(tvOS 7.0, *)
  optional func player(_ player: GKPlayer, receivedTurnEventFor match: GKTurnBasedMatch, didBecomeActive: Bool)
  @available(tvOS 5.0, *)
  optional func player(_ player: GKPlayer, matchEnded match: GKTurnBasedMatch)
  @available(tvOS 7.0, *)
  optional func player(_ player: GKPlayer, receivedExchangeRequest exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(tvOS 7.0, *)
  optional func player(_ player: GKPlayer, receivedExchangeCancellation exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(tvOS 7.0, *)
  optional func player(_ player: GKPlayer, receivedExchangeReplies replies: [GKTurnBasedExchangeReply], forCompletedExchange exchange: GKTurnBasedExchange, for match: GKTurnBasedMatch)
  @available(tvOS 9.0, *)
  optional func player(_ player: GKPlayer, wantsToQuitMatch match: GKTurnBasedMatch)
}
@available(tvOS 6.0, *)
var GKTurnTimeoutDefault: TimeInterval
@available(tvOS 6.0, *)
var GKTurnTimeoutNone: TimeInterval
@available(tvOS 5.0, *)
class GKTurnBasedMatch : NSObject {
  var matchID: String { get }
  var creationDate: Date { get }
  var participants: [GKTurnBasedParticipant] { get }
  var status: GKTurnBasedMatch.Status { get }
  var currentParticipant: GKTurnBasedParticipant? { get }
  var matchData: Data? { get }
  @available(tvOS 7.0, *)
  func setLocalizableMessageWithKey(_ key: String, arguments: [String]?)
  var message: String?
  @available(tvOS 6.0, *)
  var matchDataMaximumSize: Int { get }
  @available(tvOS 7.0, *)
  var exchanges: [GKTurnBasedExchange]? { get }
  @available(tvOS 7.0, *)
  var activeExchanges: [GKTurnBasedExchange]? { get }
  @available(tvOS 7.0, *)
  var completedExchanges: [GKTurnBasedExchange]? { get }
  @available(tvOS 7.0, *)
  var exchangeDataMaximumSize: Int { get }
  @available(tvOS 7.0, *)
  var exchangeMaxInitiatedExchangesPerPlayer: Int { get }
  class func find(for request: GKMatchRequest, withCompletionHandler completionHandler: @escaping (GKTurnBasedMatch?, Error?) -> Void)
  class func loadMatches(completionHandler: (([GKTurnBasedMatch]?, Error?) -> Void)? = nil)
  @available(tvOS 5.0, *)
  class func load(withID matchID: String, withCompletionHandler completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(tvOS 6.0, *)
  func rematch(completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(tvOS 5.0, *)
  func acceptInvite(completionHandler: ((GKTurnBasedMatch?, Error?) -> Void)? = nil)
  @available(tvOS 5.0, *)
  func declineInvite(completionHandler: ((Error?) -> Void)? = nil)
  func remove(completionHandler: ((Error?) -> Void)? = nil)
  func loadMatchData(completionHandler: ((Data?, Error?) -> Void)? = nil)
  @available(tvOS 6.0, *)
  func endTurn(withNextParticipants nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 6.0, *)
  func participantQuitInTurn(with matchOutcome: GKTurnBasedMatch.Outcome, nextParticipants: [GKTurnBasedParticipant], turnTimeout timeout: TimeInterval, match matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  func participantQuitOutOfTurn(with matchOutcome: GKTurnBasedMatch.Outcome, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  func endMatchInTurn(withMatch matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS, introduced: 6.0, deprecated: 14.0, message: "pass GKLeaderboardScore to endMatchInTurnWithMatchData:scores:completionHandler instead")
  func endMatchInTurn(withMatch matchData: Data, scores: [GKScore]?, achievements: [GKAchievement]?, completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 14.0, *)
  func endMatchInTurn(withMatch matchData: Data, leaderboardScores scores: [GKLeaderboardScore], achievements: [Any], completionHandler: @escaping (Error?) -> Void)
  @available(tvOS 6.0, *)
  func saveCurrentTurn(withMatch matchData: Data, completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func saveMergedMatch(_ matchData: Data, withResolvedExchanges exchanges: [GKTurnBasedExchange], completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func sendExchange(to participants: [GKTurnBasedParticipant], data: Data, localizableMessageKey key: String, arguments: [String], timeout: TimeInterval, completionHandler: ((GKTurnBasedExchange?, Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func sendReminder(to participants: [GKTurnBasedParticipant], localizableMessageKey key: String, arguments: [String], completionHandler: ((Error?) -> Void)? = nil)
}
@available(tvOS 7.0, *)
enum GKTurnBasedExchangeStatus : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case unknown
  case active
  case complete
  case resolved
  case canceled
}
@available(tvOS 7.0, *)
var GKExchangeTimeoutDefault: TimeInterval
@available(tvOS 7.0, *)
var GKExchangeTimeoutNone: TimeInterval
@available(tvOS 7.0, *)
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
  @available(tvOS 7.0, *)
  func cancel(withLocalizableMessageKey key: String, arguments: [String], completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func reply(withLocalizableMessageKey key: String, arguments: [String], data: Data, completionHandler: ((Error?) -> Void)? = nil)
}
@available(tvOS 7.0, *)
class GKTurnBasedExchangeReply : NSObject {
  var recipient: GKTurnBasedParticipant { get }
  var message: String? { get }
  var data: Data? { get }
  @available(tvOS 8.0, *)
  var replyDate: Date { get }
}
