
@available(iOS 13.0, *)
class UIScene : UIResponder {
  init(session: UISceneSession, connectionOptions: UIScene.ConnectionOptions)
  var session: UISceneSession { get }
  var delegate: UISceneDelegate?
  var activationState: UIScene.ActivationState { get }
  func open(_ url: URL, options: UIScene.OpenExternalURLOptions?, completionHandler completion: ((Bool) -> Void)? = nil)
  func open(_ url: URL, options: UIScene.OpenExternalURLOptions?) async -> Bool
  var title: String!
  var activationConditions: UISceneActivationConditions
}
@available(iOS 13.0, *)
protocol UISceneDelegate : NSObjectProtocol {
  optional func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)
  @asyncHandler optional func sceneDidDisconnect(_ scene: UIScene)
  @asyncHandler optional func sceneDidBecomeActive(_ scene: UIScene)
  optional func sceneWillResignActive(_ scene: UIScene)
  optional func sceneWillEnterForeground(_ scene: UIScene)
  @asyncHandler optional func sceneDidEnterBackground(_ scene: UIScene)
  optional func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>)
  optional func stateRestorationActivity(for scene: UIScene) -> NSUserActivity?
  optional func scene(_ scene: UIScene, willContinueUserActivityWithType userActivityType: String)
  optional func scene(_ scene: UIScene, continue userActivity: NSUserActivity)
  @asyncHandler optional func scene(_ scene: UIScene, didFailToContinueUserActivityWithType userActivityType: String, error: Error)
  @asyncHandler optional func scene(_ scene: UIScene, didUpdate userActivity: NSUserActivity)
}
extension UIScene {
  @available(iOS 13.0, *)
  class let willConnectNotification: NSNotification.Name
  @available(iOS 13.0, *)
  class let didDisconnectNotification: NSNotification.Name
  @available(iOS 13.0, *)
  class let didActivateNotification: NSNotification.Name
  @available(iOS 13.0, *)
  class let willDeactivateNotification: NSNotification.Name
  @available(iOS 13.0, *)
  class let willEnterForegroundNotification: NSNotification.Name
  @available(iOS 13.0, *)
  class let didEnterBackgroundNotification: NSNotification.Name
}
