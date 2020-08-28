
enum GKChallengeState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case pending
  case completed
  case declined
}
@available(macOS 10.8, *)
class GKChallenge : NSObject, NSCoding, NSSecureCoding {
  class func loadReceivedChallenges(completionHandler: (([GKChallenge]?, Error?) -> Void)? = nil)
  func decline()
  @available(macOS 10.10, *)
  @NSCopying var issuingPlayer: GKPlayer? { get }
  @available(macOS 10.10, *)
  @NSCopying var receivingPlayer: GKPlayer? { get }
  var state: GKChallengeState { get }
  var issueDate: Date { get }
  var completionDate: Date? { get }
  var message: String? { get }
}
extension GKChallenge {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: " This property is obsolete, Use issuingPlayer instead")
  var issuingPlayerID: String? { get }
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: " This property is obsolete, Use receivingPlayer instead")
  var receivingPlayerID: String? { get }
}
@available(macOS 10.8, *)
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
}
@available(macOS 10.8, *)
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
}
extension GKScore {
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "pass GKLeaderboardScore to reportLeaderboardScores:withEligibleChallenges:withCompletionHandler instead")
  class func report(_ scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 11.0, *)
  class func report(_ scores: [GKLeaderboardScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
}
extension GKAchievement {
  @available(macOS 10.10, *)
  func selectChallengeablePlayers(_ players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  class func report(_ achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
}
extension GKScore {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, pass GKPlayers to challengeComposeControllerWithMessage:players:completionHandler: and present the view controller instead")
  func issueChallenge(toPlayers playerIDs: [String]?, message: String?)
}
extension GKAchievement {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, pass GKPlayers to challengeComposeControllerWithMessage:players:completionHandler: and present the view controller instead")
  func issueChallenge(toPlayers playerIDs: [String]?, message: String?)
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, pass GKPlayers to selectChallengeablePlayers:")
  func selectChallengeablePlayerIDs(_ playerIDs: [String]?, withCompletionHandler completionHandler: (([String]?, Error?) -> Void)? = nil)
}
typealias GKChallengeComposeCompletionBlock = (NSViewController, Bool, [String]?) -> Void
extension GKScore {
  @available(macOS 10.10, *)
  func challengeComposeController(withMessage message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> NSViewController
}
extension GKLeaderboard.Entry {
  @available(macOS 11.0, *)
  func challengeComposeController(withMessage message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> NSViewController
}
extension GKAchievement {
  @available(macOS 10.10, *)
  func challengeComposeController(withMessage message: String?, players: [GKPlayer], completionHandler: GKChallengeComposeCompletionBlock? = nil) -> NSViewController
}
extension GKScore {
}
extension GKAchievement {
}
