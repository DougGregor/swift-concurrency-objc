
@available(iOS 13.4, *)
protocol CPTemplateApplicationDashboardSceneDelegate : UISceneDelegate {
  @asyncHandler optional func templateApplicationDashboardScene(_ templateApplicationDashboardScene: CPTemplateApplicationDashboardScene, didConnect dashboardController: CPDashboardController, to window: UIWindow)
  @asyncHandler optional func templateApplicationDashboardScene(_ templateApplicationDashboardScene: CPTemplateApplicationDashboardScene, didDisconnect dashboardController: CPDashboardController, from window: UIWindow)
}
@available(iOS 13.4, *)
class CPTemplateApplicationDashboardScene : UIScene {
  var dashboardController: CPDashboardController { get }
  var dashboardWindow: UIWindow { get }
}
extension UISceneSession.Role {
  @available(iOS 13.4, *)
  static let CPTemplateApplicationDashboardSceneSessionRoleApplication: UISceneSession.Role
}
