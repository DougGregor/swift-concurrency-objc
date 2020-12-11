
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
@available(tvOS 6.0, *)
class GKGameCenterViewController : UINavigationController {
}
extension GKGameCenterViewController {
  weak var gameCenterDelegate: @sil_weak GKGameCenterControllerDelegate?
  @available(tvOS 14.0, *)
  init(state: GKGameCenterViewControllerState)
  @available(tvOS 14.0, *)
  init(leaderboardID: String, playerScope: GKLeaderboard.PlayerScope, timeScope: GKLeaderboard.TimeScope)
  @available(tvOS 14.0, *)
  init(leaderboard: GKLeaderboard, playerScope: GKLeaderboard.PlayerScope)
  @available(tvOS 14.0, *)
  init(achievementID: String)
}
extension GKGameCenterViewController {
  var viewState: GKGameCenterViewControllerState
  var leaderboardIdentifier: String?
}
protocol GKGameCenterControllerDelegate : NSObjectProtocol {
  @available(tvOS 6.0, *)
  func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController)
}
