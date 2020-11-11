
enum GKChallengeState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case pending
  case completed
  case declined
}
@available(iOS 6.0, *)
class GKChallenge : NSObject, NSCoding, NSSecureCoding {
  class func loadReceivedChallenges(completionHandler: (([GKChallenge]?, Error?) -> Void)? = nil)
  class func loadReceivedChallengesAsync() async throws -> [GKChallenge]
  func decline()
  @available(iOS 8.0, *)
  @NSCopying var issuingPlayer: GKPlayer? { get }
  @available(iOS 8.0, *)
  @NSCopying var receivingPlayer: GKPlayer? { get }
  var state: GKChallengeState { get }
  var issueDate: Date { get }
  var completionDate: Date? { get }
  var message: String? { get }
}
extension GKChallenge {
  @available(iOS, introduced: 6.0, deprecated: 8.0, message: " This property is obsolete, Use issuingPlayer instead")
  var issuingPlayerID: String? { get }
  @available(iOS, introduced: 6.0, deprecated: 8.0, message: " This property is obsolete, Use receivingPlayer instead")
  var receivingPlayerID: String? { get }
}
@available(iOS 6.0, *)
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
}
@available(iOS 6.0, *)
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
}
extension GKScore {
  @available(iOS, introduced: 6.0, deprecated: 14.0, message: "pass GKLeaderboardScore to reportLeaderboardScores:withEligibleChallenges:withCompletionHandler instead")
  class func report(_ scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS, introduced: 6.0, deprecated: 14.0, message: "pass GKLeaderboardScore to reportLeaderboardScores:withEligibleChallenges:withCompletionHandler instead")
  class func reportScoresAsync(_ scores: [GKScore], withEligibleChallenges challenges: [GKChallenge]) async throws
  @available(iOS 14.0, *)
  class func report(_ scores: [GKLeaderboardScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 14.0, *)
  class func reportLeaderboardScoresAsync(_ scores: [GKLeaderboardScore], withEligibleChallenges challenges: [GKChallenge]) async throws
}
extension GKAchievement {
  @available(iOS 8.0, *)
  func selectChallengeablePlayers(_ players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func selectChallengeablePlayersAsync(_ players: [GKPlayer]) async throws -> [GKPlayer]
  @available(iOS 7.0, *)
  class func report(_ achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func reportAchievementsAsync(_ achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge]) async throws
}
extension GKScore {
}
extension GKAchievement {
  @available(iOS, introduced: 6.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, pass GKPlayers to selectChallengeablePlayers:")
  func selectChallengeablePlayerIDs(_ playerIDs: [String]?, withCompletionHandler completionHandler: (([String]?, Error?) -> Void)? = nil)
  @available(iOS, introduced: 6.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, pass GKPlayers to selectChallengeablePlayers:")
  func selectChallengeablePlayerIDsAsync(_ playerIDs: [String]?) async throws -> [String]
}
typealias GKChallengeComposeCompletionBlock = (UIViewController, Bool, [String]?) -> Void
extension GKScore {
  @available(iOS 8.0, *)
  func challengeComposeController(withMessage message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController
}
extension GKLeaderboard.Entry {
  @available(iOS 14.0, *)
  func challengeComposeController(withMessage message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController
}
extension GKAchievement {
  @available(iOS 8.0, *)
  func challengeComposeController(withMessage message: String?, players: [GKPlayer], completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController
}
extension GKScore {
  @available(iOS, introduced: 7.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, pass GKPlayers to challengeComposeControllerWithMessage:players: instead")
  func challengeComposeController(withPlayers playerIDs: [String]?, message: String?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController?
}
extension GKAchievement {
  @available(iOS, introduced: 7.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, pass GKPlayers to challengeComposeControllerWithMessage:players: instead")
  func challengeComposeController(withPlayers playerIDs: [String]?, message: String?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController?
}
