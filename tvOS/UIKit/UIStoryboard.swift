
typealias __UIStoryboardViewControllerCreator = (NSCoder) -> UIViewController?
@available(tvOS 5.0, *)
class UIStoryboard : NSObject {
  /*not inherited*/ init(name: String, bundle storyboardBundleOrNil: Bundle?)
  func instantiateInitialViewController() -> UIViewController?
  @available(tvOS 13.0, *)
  func __instantiateInitialViewController(creator block: ((NSCoder) -> UIViewController?)? = nil) -> UIViewController?
  func instantiateViewController(withIdentifier identifier: String) -> UIViewController
  @available(tvOS 13.0, *)
  func __instantiateViewController(withIdentifier identifier: String, creator block: ((NSCoder) -> UIViewController?)? = nil) -> UIViewController
}

extension UIStoryboard {
  @available(iOS 13.0, tvOS 13.0, *)
  func instantiateInitialViewController<ViewController>(creator: ((NSCoder) -> ViewController?)? = nil) -> ViewController? where ViewController : UIViewController
  @available(iOS 13.0, tvOS 13.0, *)
  func instantiateViewController<ViewController>(identifier: String, creator: ((NSCoder) -> ViewController?)? = nil) -> ViewController where ViewController : UIViewController
}
