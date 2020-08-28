
@available(tvOS 13.0, *)
class UIScene : UIResponder {
  init(session: UISceneSession, connectionOptions: UIScene.ConnectionOptions)
  var session: UISceneSession { get }
  var delegate: UISceneDelegate?
  var activationState: UIScene.ActivationState { get }
  func open(_ url: URL, options: UIScene.OpenExternalURLOptions?, completionHandler completion: ((Bool) -> Void)? = nil)
  var title: String!
  var activationConditions: UISceneActivationConditions
}
@available(tvOS 13.0, *)
protocol UISceneDelegate : NSObjectProtocol {
  optional func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)
  optional func sceneDidDisconnect(_ scene: UIScene)
  optional func sceneDidBecomeActive(_ scene: UIScene)
  optional func sceneWillResignActive(_ scene: UIScene)
  optional func sceneWillEnterForeground(_ scene: UIScene)
  optional func sceneDidEnterBackground(_ scene: UIScene)
  optional func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>)
  optional func stateRestorationActivity(for scene: UIScene) -> NSUserActivity?
  optional func scene(_ scene: UIScene, willContinueUserActivityWithType userActivityType: String)
  optional func scene(_ scene: UIScene, continue userActivity: NSUserActivity)
  optional func scene(_ scene: UIScene, didFailToContinueUserActivityWithType userActivityType: String, error: Error)
  optional func scene(_ scene: UIScene, didUpdate userActivity: NSUserActivity)
}
extension UIScene {
  @available(tvOS 13.0, *)
  class let willConnectNotification: NSNotification.Name
  @available(tvOS 13.0, *)
  class let didDisconnectNotification: NSNotification.Name
  @available(tvOS 13.0, *)
  class let didActivateNotification: NSNotification.Name
  @available(tvOS 13.0, *)
  class let willDeactivateNotification: NSNotification.Name
  @available(tvOS 13.0, *)
  class let willEnterForegroundNotification: NSNotification.Name
  @available(tvOS 13.0, *)
  class let didEnterBackgroundNotification: NSNotification.Name
}
