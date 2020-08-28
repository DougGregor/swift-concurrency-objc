
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use GKGameCenterViewController instead")
class GKLeaderboardViewController : GKGameCenterViewController {
}
extension GKLeaderboardViewController {
  var timeScope: GKLeaderboard.TimeScope
  var category: String!
  weak var leaderboardDelegate: @sil_weak GKLeaderboardViewControllerDelegate!
}
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use GKGameCenterViewController instead")
protocol GKLeaderboardViewControllerDelegate : NSObjectProtocol {
  func leaderboardViewControllerDidFinish(_ viewController: GKLeaderboardViewController!)
}
