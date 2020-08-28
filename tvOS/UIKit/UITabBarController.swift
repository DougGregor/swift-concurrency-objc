
@available(tvOS 2.0, *)
class UITabBarController : UIViewController, UITabBarDelegate, NSCoding {
  var viewControllers: [UIViewController]?
  func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool)
  unowned(unsafe) var selectedViewController: @sil_unmanaged UIViewController?
  var selectedIndex: Int
  var moreNavigationController: UINavigationController { get }
  var customizableViewControllers: [UIViewController]?
  @available(tvOS 3.0, *)
  var tabBar: UITabBar { get }
  weak var delegate: @sil_weak UITabBarControllerDelegate?
}
protocol UITabBarControllerDelegate : NSObjectProtocol {
  @available(tvOS 3.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool
  @available(tvOS 2.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController)
  @available(tvOS 3.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, willBeginCustomizing viewControllers: [UIViewController])
  @available(tvOS 3.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, willEndCustomizing viewControllers: [UIViewController], changed: Bool)
  @available(tvOS 2.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, didEndCustomizing viewControllers: [UIViewController], changed: Bool)
  @available(tvOS 7.0, *)
  optional func tabBarControllerSupportedInterfaceOrientations(_ tabBarController: UITabBarController) -> UIInterfaceOrientationMask
  @available(tvOS 7.0, *)
  optional func tabBarControllerPreferredInterfaceOrientationForPresentation(_ tabBarController: UITabBarController) -> UIInterfaceOrientation
  @available(tvOS 7.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, interactionControllerFor animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 7.0, *)
  optional func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var tabBarItem: UITabBarItem!
  var tabBarController: UITabBarController? { get }
  @available(tvOS 13.0, *)
  var tabBarObservedScrollView: UIScrollView?
}
