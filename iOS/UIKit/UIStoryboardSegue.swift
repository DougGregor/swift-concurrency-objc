
@available(iOS 5.0, *)
class UIStoryboardSegue : NSObject {
  @available(iOS 6.0, *)
  convenience init(identifier: String?, source: UIViewController, destination: UIViewController, performHandler: @escaping () -> Void)
  init(identifier: String?, source: UIViewController, destination: UIViewController)
  var identifier: String? { get }
  var source: UIViewController { get }
  var destination: UIViewController { get }
  func perform()
}
@available(iOS 9.0, *)
class UIStoryboardUnwindSegueSource : NSObject {
  var source: UIViewController { get }
  var unwindAction: Selector { get }
  var sender: Any? { get }
}
