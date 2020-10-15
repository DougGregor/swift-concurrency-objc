
extension UINavigationController {
  enum Operation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case push
    case pop
  }
  class let hideShowBarDuration: CGFloat
}
@available(iOS 2.0, *)
class UINavigationController : UIViewController {
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  func pushViewController(_ viewController: UIViewController, animated: Bool)
  func popViewController(animated: Bool) -> UIViewController?
  func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]?
  func popToRootViewController(animated: Bool) -> [UIViewController]?
  var topViewController: UIViewController? { get }
  var visibleViewController: UIViewController? { get }
  var viewControllers: [UIViewController]
  @available(iOS 3.0, *)
  func setViewControllers(_ viewControllers: [UIViewController], animated: Bool)
  var isNavigationBarHidden: Bool
  func setNavigationBarHidden(_ hidden: Bool, animated: Bool)
  var navigationBar: UINavigationBar { get }
  @available(iOS 3.0, *)
  var isToolbarHidden: Bool
  @available(iOS 3.0, *)
  func setToolbarHidden(_ hidden: Bool, animated: Bool)
  @available(iOS 3.0, *)
  var toolbar: UIToolbar! { get }
  weak var delegate: @sil_weak UINavigationControllerDelegate?
  @available(iOS 7.0, *)
  var interactivePopGestureRecognizer: UIGestureRecognizer? { get }
  @available(iOS 8.0, *)
  var hidesBarsWhenKeyboardAppears: Bool
  @available(iOS 8.0, *)
  var hidesBarsOnSwipe: Bool
  @available(iOS 8.0, *)
  var barHideOnSwipeGestureRecognizer: UIPanGestureRecognizer { get }
  @available(iOS 8.0, *)
  var hidesBarsWhenVerticallyCompact: Bool
  @available(iOS 8.0, *)
  var hidesBarsOnTap: Bool
  @available(iOS 8.0, *)
  unowned(unsafe) var barHideOnTapGestureRecognizer: @sil_unmanaged UITapGestureRecognizer { get }
}
protocol UINavigationControllerDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool)
  @available(iOS 2.0, *)
  @asyncHandler optional func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool)
  @available(iOS 7.0, *)
  optional func navigationControllerSupportedInterfaceOrientations(_ navigationController: UINavigationController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func navigationControllerPreferredInterfaceOrientationForPresentation(_ navigationController: UINavigationController) -> UIInterfaceOrientation
  @available(iOS 7.0, *)
  optional func navigationController(_ navigationController: UINavigationController, interactionControllerFor animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(iOS 7.0, *)
  optional func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var navigationItem: UINavigationItem { get }
  var hidesBottomBarWhenPushed: Bool
  var navigationController: UINavigationController? { get }
}
extension UIViewController {
  @available(iOS 3.0, *)
  var toolbarItems: [UIBarButtonItem]?
  @available(iOS 3.0, *)
  func setToolbarItems(_ toolbarItems: [UIBarButtonItem]?, animated: Bool)
}
