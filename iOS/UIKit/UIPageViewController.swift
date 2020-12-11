
extension UIPageViewController {
  enum NavigationOrientation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case horizontal
    case vertical
  }
  enum SpineLocation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case min
    case mid
    case max
  }
  enum NavigationDirection : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case forward
    case reverse
  }
  enum TransitionStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case pageCurl
    case scroll
  }
  struct OptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension UIPageViewController.OptionsKey {
  static let spineLocation: UIPageViewController.OptionsKey
  @available(iOS 6.0, *)
  static let interPageSpacing: UIPageViewController.OptionsKey
}
@available(iOS 5.0, *)
class UIPageViewController : UIViewController {
  init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil)
  weak var delegate: @sil_weak UIPageViewControllerDelegate?
  weak var dataSource: @sil_weak UIPageViewControllerDataSource?
  var transitionStyle: UIPageViewController.TransitionStyle { get }
  var navigationOrientation: UIPageViewController.NavigationOrientation { get }
  var spineLocation: UIPageViewController.SpineLocation { get }
  var isDoubleSided: Bool
  var gestureRecognizers: [UIGestureRecognizer] { get }
  var viewControllers: [UIViewController]? { get }
  func setViewControllers(_ viewControllers: [UIViewController]?, direction: UIPageViewController.NavigationDirection, animated: Bool, completion: ((Bool) -> Void)? = nil)
  func setViewControllers(_ viewControllers: [UIViewController]?, direction: UIPageViewController.NavigationDirection, animated: Bool) async -> Bool
}
protocol UIPageViewControllerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  optional func pageViewController(_ pageViewController: UIPageViewController, willTransitionTo pendingViewControllers: [UIViewController])
  @available(iOS 5.0, *)
  optional func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool)
  @available(iOS 5.0, *)
  optional func pageViewController(_ pageViewController: UIPageViewController, spineLocationFor orientation: UIInterfaceOrientation) -> UIPageViewController.SpineLocation
  @available(iOS 7.0, *)
  optional func pageViewControllerSupportedInterfaceOrientations(_ pageViewController: UIPageViewController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func pageViewControllerPreferredInterfaceOrientationForPresentation(_ pageViewController: UIPageViewController) -> UIInterfaceOrientation
}
protocol UIPageViewControllerDataSource : NSObjectProtocol {
  @available(iOS 5.0, *)
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
  @available(iOS 5.0, *)
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
  @available(iOS 6.0, *)
  optional func presentationCount(for pageViewController: UIPageViewController) -> Int
  @available(iOS 6.0, *)
  optional func presentationIndex(for pageViewController: UIPageViewController) -> Int
}
