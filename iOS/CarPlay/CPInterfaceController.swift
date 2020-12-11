
let CarPlayErrorDomain: String
@available(iOS 12.0, *)
class CPInterfaceController : NSObject {
  weak var delegate: @sil_weak CPInterfaceControllerDelegate?
  @available(iOS 13.0, *)
  var prefersDarkUserInterfaceStyle: Bool
  @available(iOS 14.0, *)
  func setRootTemplate(_ rootTemplate: CPTemplate, animated: Bool, completion: ((Bool, Error?) -> Void)? = nil)
  @available(iOS 14.0, *)
  func setRootTemplate(_ rootTemplate: CPTemplate, animated: Bool) async throws -> Bool
  @available(iOS 14.0, *)
  func pushTemplate(_ templateToPush: CPTemplate, animated: Bool, completion: ((Bool, Error?) -> Void)? = nil)
  @available(iOS 14.0, *)
  func pushTemplate(_ templateToPush: CPTemplate, animated: Bool) async throws -> Bool
  @available(iOS 14.0, *)
  func popTemplate(animated: Bool, completion: ((Bool, Error?) -> Void)? = nil)
  @available(iOS 14.0, *)
  func popTemplate(animated: Bool) async throws -> Bool
  @available(iOS 14.0, *)
  func popToRootTemplate(animated: Bool, completion: ((Bool, Error?) -> Void)? = nil)
  @available(iOS 14.0, *)
  func popToRootTemplate(animated: Bool) async throws -> Bool
  @available(iOS 14.0, *)
  func pop(to targetTemplate: CPTemplate, animated: Bool, completion: ((Bool, Error?) -> Void)? = nil)
  @available(iOS 14.0, *)
  func pop(to targetTemplate: CPTemplate, animated: Bool) async throws -> Bool
  @available(iOS 14.0, *)
  func presentTemplate(_ templateToPresent: CPTemplate, animated: Bool, completion: ((Bool, Error?) -> Void)? = nil)
  @available(iOS 14.0, *)
  func presentTemplate(_ templateToPresent: CPTemplate, animated: Bool) async throws -> Bool
  @available(iOS 14.0, *)
  func dismissTemplate(animated: Bool, completion: ((Bool, Error?) -> Void)? = nil)
  @available(iOS 14.0, *)
  func dismissTemplate(animated: Bool) async throws -> Bool
  var presentedTemplate: CPTemplate? { get }
  var rootTemplate: CPTemplate { get }
  var topTemplate: CPTemplate? { get }
  var templates: [CPTemplate] { get }
  @available(iOS 14.0, *)
  var carTraitCollection: UITraitCollection { get }
  @available(iOS, introduced: 12.0, deprecated: 14.0)
  func setRootTemplate(_ rootTemplate: CPTemplate, animated: Bool)
  @available(iOS, introduced: 12.0, deprecated: 14.0)
  func pushTemplate(_ templateToPush: CPTemplate, animated: Bool)
  @available(iOS, introduced: 12.0, deprecated: 14.0)
  func popTemplate(animated: Bool)
  @available(iOS, introduced: 12.0, deprecated: 14.0)
  func popToRootTemplate(animated: Bool)
  @available(iOS, introduced: 12.0, deprecated: 14.0)
  func pop(to targetTemplate: CPTemplate, animated: Bool)
  @available(iOS, introduced: 12.0, deprecated: 14.0)
  func presentTemplate(_ templateToPresent: CPTemplate, animated: Bool)
  @available(iOS, introduced: 12.0, deprecated: 14.0)
  func dismissTemplate(animated: Bool)
}
@available(iOS 12.0, *)
protocol CPInterfaceControllerDelegate : NSObjectProtocol {
  optional func templateWillAppear(_ aTemplate: CPTemplate, animated: Bool)
  optional func templateDidAppear(_ aTemplate: CPTemplate, animated: Bool)
  optional func templateWillDisappear(_ aTemplate: CPTemplate, animated: Bool)
  optional func templateDidDisappear(_ aTemplate: CPTemplate, animated: Bool)
}
@available(iOS, introduced: 12.0, deprecated: 13.0)
protocol CPApplicationDelegate : UIApplicationDelegate {
  func application(_ application: UIApplication, didConnectCarInterfaceController interfaceController: CPInterfaceController, to window: CPWindow)
  func application(_ application: UIApplication, didDisconnectCarInterfaceController interfaceController: CPInterfaceController, from window: CPWindow)
  optional func application(_ application: UIApplication, didSelect navigationAlert: CPNavigationAlert)
  optional func application(_ application: UIApplication, didSelect maneuver: CPManeuver)
}
