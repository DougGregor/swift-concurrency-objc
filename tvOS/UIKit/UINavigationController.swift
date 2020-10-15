
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
@available(tvOS 2.0, *)
class UINavigationController : UIViewController {
  @available(tvOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  func pushViewController(_ viewController: UIViewController, animated: Bool)
  func popViewController(animated: Bool) -> UIViewController?
  func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]?
  func popToRootViewController(animated: Bool) -> [UIViewController]?
  var topViewController: UIViewController? { get }
  var visibleViewController: UIViewController? { get }
  var viewControllers: [UIViewController]
  @available(tvOS 3.0, *)
  func setViewControllers(_ viewControllers: [UIViewController], animated: Bool)
  var isNavigationBarHidden: Bool
  func setNavigationBarHidden(_ hidden: Bool, animated: Bool)
  var navigationBar: UINavigationBar { get }
  weak var delegate: @sil_weak UINavigationControllerDelegate?
}
protocol UINavigationControllerDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool)
  @available(tvOS 2.0, *)
  @asyncHandler optional func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool)
  @available(tvOS 7.0, *)
  optional func navigationController(_ navigationController: UINavigationController, interactionControllerFor animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 7.0, *)
  optional func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
}
extension UIViewController {
  var navigationItem: UINavigationItem { get }
  var navigationController: UINavigationController? { get }
}
extension UIViewController {
}
