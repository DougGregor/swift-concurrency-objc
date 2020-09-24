
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use GKGameCenterViewController instead")
class GKAchievementViewController : GKGameCenterViewController {
  weak var achievementDelegate: @sil_weak GKAchievementViewControllerDelegate!
}
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use GKGameCenterViewController instead")
protocol GKAchievementViewControllerDelegate : NSObjectProtocol {
  @asyncHandler func achievementViewControllerDidFinish(_ viewController: GKAchievementViewController!)
}
