
@available(iOS 13.0, *)
protocol CPTemplateApplicationSceneDelegate : UISceneDelegate {
  optional func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didConnect interfaceController: CPInterfaceController, to window: CPWindow)
  @available(iOS 14.0, *)
  optional func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didConnect interfaceController: CPInterfaceController)
  optional func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didDisconnect interfaceController: CPInterfaceController, from window: CPWindow)
  @available(iOS 14.0, *)
  optional func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didDisconnectInterfaceController interfaceController: CPInterfaceController)
  optional func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didSelect navigationAlert: CPNavigationAlert)
  optional func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didSelect maneuver: CPManeuver)
}
@available(iOS 13.0, *)
class CPTemplateApplicationScene : UIScene {
  var interfaceController: CPInterfaceController { get }
  var carWindow: CPWindow { get }
}
extension UISceneSession.Role {
  @available(iOS 13.0, *)
  static let carTemplateApplication: UISceneSession.Role
}
