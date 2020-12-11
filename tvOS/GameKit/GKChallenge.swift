
enum GKChallengeState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case pending
  case completed
  case declined
}
@available(tvOS 6.0, *)
class GKChallenge : NSObject, NSCoding, NSSecureCoding {
  class func loadReceivedChallenges(completionHandler: (([GKChallenge]?, Error?) -> Void)? = nil)
  class func loadReceivedChallenges() async throws -> [GKChallenge]
  func decline()
  @available(tvOS 8.0, *)
  @NSCopying var issuingPlayer: GKPlayer? { get }
  @available(tvOS 8.0, *)
  @NSCopying var receivingPlayer: GKPlayer? { get }
  var state: GKChallengeState { get }
  var issueDate: Date { get }
  var completionDate: Date? { get }
  var message: String? { get }
}
extension GKChallenge {
}
@available(tvOS 6.0, *)
class GKScoreChallenge : GKChallenge {
  var score: GKScore? { get }
}
@available(tvOS 6.0, *)
class GKAchievementChallenge : GKChallenge {
  var achievement: GKAchievement? { get }
}
extension GKScore {
  @available(tvOS, introduced: 6.0, deprecated: 14.0, message: "pass GKLeaderboardScore to reportLeaderboardScores:withEligibleChallenges:withCompletionHandler instead")
  class func report(_ scores: [GKScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS, introduced: 6.0, deprecated: 14.0, message: "pass GKLeaderboardScore to reportLeaderboardScores:withEligibleChallenges:withCompletionHandler instead")
  class func report(_ scores: [GKScore], withEligibleChallenges challenges: [GKChallenge]) async throws
  @available(tvOS 14.0, *)
  class func report(_ scores: [GKLeaderboardScore], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 14.0, *)
  class func report(_ scores: [GKLeaderboardScore], withEligibleChallenges challenges: [GKChallenge]) async throws
}
extension GKAchievement {
  @available(tvOS 8.0, *)
  func selectChallengeablePlayers(_ players: [GKPlayer], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(tvOS 8.0, *)
  func selectChallengeablePlayers(_ players: [GKPlayer]) async throws -> [GKPlayer]
  @available(tvOS 7.0, *)
  class func report(_ achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  class func report(_ achievements: [GKAchievement], withEligibleChallenges challenges: [GKChallenge]) async throws
}
extension GKScore {
}
extension GKAchievement {
}
typealias GKChallengeComposeCompletionBlock = (UIViewController, Bool, [String]?) -> Void
extension GKScore {
  @available(tvOS 8.0, *)
  func challengeComposeController(withMessage message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController
}
extension GKLeaderboard.Entry {
  @available(tvOS 14.0, *)
  func challengeComposeController(withMessage message: String?, players: [GKPlayer]?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController
}
extension GKAchievement {
  @available(tvOS 8.0, *)
  func challengeComposeController(withMessage message: String?, players: [GKPlayer], completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController
}
extension GKScore {
  @available(tvOS, introduced: 7.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, pass GKPlayers to challengeComposeControllerWithMessage:players: instead")
  func challengeComposeController(withPlayers playerIDs: [String]?, message: String?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController?
}
extension GKAchievement {
  @available(tvOS, introduced: 7.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, pass GKPlayers to challengeComposeControllerWithMessage:players: instead")
  func challengeComposeController(withPlayers playerIDs: [String]?, message: String?, completionHandler: GKChallengeComposeCompletionBlock? = nil) -> UIViewController?
}
