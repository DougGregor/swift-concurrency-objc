
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
@available(macOS 10.9, *)
class GKGameCenterViewController : NSViewController, GKViewController {
}
extension GKGameCenterViewController {
  weak var gameCenterDelegate: @sil_weak GKGameCenterControllerDelegate?
  @available(macOS 11.0, *)
  init(state: GKGameCenterViewControllerState)
  @available(macOS 11.0, *)
  init(leaderboardID: String, playerScope: GKLeaderboard.PlayerScope, timeScope: GKLeaderboard.TimeScope)
  @available(macOS 11.0, *)
  init(leaderboard: GKLeaderboard, playerScope: GKLeaderboard.PlayerScope)
  @available(macOS 11.0, *)
  init(achievementID: String)
}
extension GKGameCenterViewController {
  @available(macOS, introduced: 10.9, deprecated: 11.0, message: "Use -initWithState: instead")
  var viewState: GKGameCenterViewControllerState
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "Use -initWithLeaderboard: instead")
  var leaderboardTimeScope: GKLeaderboard.TimeScope
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use -initWithLeaderboard: instead")
  var leaderboardIdentifier: String?
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "GKGameCenterViewController's leaderboardCategory property is deprecated. Use -initWithLeaderboard: instead")
  var leaderboardCategory: String?
}
protocol GKGameCenterControllerDelegate : NSObjectProtocol {
  @available(macOS 10.9, *)
  @asyncHandler func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController)
}
