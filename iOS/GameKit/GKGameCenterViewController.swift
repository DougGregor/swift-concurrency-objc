
enum GKGameCenterViewControllerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case leaderboards
  case achievements
  case challenges
  case localPlayerProfile
  case dashboard
}
@available(iOS 6.0, *)
class GKGameCenterViewController : UINavigationController {
}
extension GKGameCenterViewController {
  weak var gameCenterDelegate: @sil_weak GKGameCenterControllerDelegate?
  @available(iOS 14.0, *)
  init(state: GKGameCenterViewControllerState)
  @available(iOS 14.0, *)
  init(leaderboardID: String, playerScope: GKLeaderboard.PlayerScope, timeScope: GKLeaderboard.TimeScope)
  @available(iOS 14.0, *)
  init(leaderboard: GKLeaderboard, playerScope: GKLeaderboard.PlayerScope)
  @available(iOS 14.0, *)
  init(achievementID: String)
}
extension GKGameCenterViewController {
  @available(iOS, introduced: 6.0, deprecated: 14.0, message: "Use -initWithState: instead")
  var viewState: GKGameCenterViewControllerState
  @available(iOS, introduced: 4.1, deprecated: 14.0, message: "Use -initWithLeaderboard: instead")
  var leaderboardTimeScope: GKLeaderboard.TimeScope
  @available(iOS, introduced: 7.0, deprecated: 14.0, message: "Use -initWithLeaderboard: instead")
  var leaderboardIdentifier: String?
}
protocol GKGameCenterControllerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController)
}
