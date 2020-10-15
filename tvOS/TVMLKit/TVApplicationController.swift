
@available(tvOS 9.0, *)
class TVApplicationControllerContext : NSObject, NSCopying {
  var javaScriptApplicationURL: URL
  var storageIdentifier: String?
  @available(tvOS 14.0, *)
  var supportsPictureInPicturePlayback: Bool
  var launchOptions: [String : Any]
}
protocol TVApplicationControllerDelegate : NSObjectProtocol {
  @available(tvOS 9.0, *)
  optional func appController(_ appController: TVApplicationController, evaluateAppJavaScriptIn jsContext: JSContext)
  @available(tvOS 9.0, *)
  optional func appController(_ appController: TVApplicationController, didFinishLaunching options: [String : Any]?)
  @available(tvOS 9.0, *)
  optional func appController(_ appController: TVApplicationController, didFail error: Error)
  @available(tvOS 9.0, *)
  optional func appController(_ appController: TVApplicationController, didStop options: [String : Any]?)
  @available(tvOS 12.0, *)
  optional func player(for appController: TVApplicationController) -> TVPlayer?
}
@available(tvOS 9.0, *)
class TVApplicationController : NSObject {
  init(context: TVApplicationControllerContext, window: UIWindow?, delegate: TVApplicationControllerDelegate?)
  var window: UIWindow? { get }
  var context: TVApplicationControllerContext { get }
  weak var delegate: @sil_weak TVApplicationControllerDelegate? { get }
  var navigationController: UINavigationController { get }
  func evaluate(inJavaScriptContext evaluation: @escaping (JSContext) -> Void, completion: ((Bool) -> Void)? = nil)
  func stop()
}
