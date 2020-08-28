
struct UITransitionContextViewControllerKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct UITransitionContextViewKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
protocol UIViewControllerTransitionCoordinatorContext : NSObjectProtocol {
  var isAnimated: Bool { get }
  var presentationStyle: UIModalPresentationStyle { get }
  var initiallyInteractive: Bool { get }
  @available(iOS 10.0, *)
  var isInterruptible: Bool { get }
  var isInteractive: Bool { get }
  var isCancelled: Bool { get }
  var transitionDuration: TimeInterval { get }
  var percentComplete: CGFloat { get }
  var completionVelocity: CGFloat { get }
  @available(iOS 2.0, *)
  var completionCurve: UIView.AnimationCurve { get }
  @available(iOS 2.0, *)
  func viewController(forKey key: UITransitionContextViewControllerKey) -> UIViewController?
  @available(iOS 8.0, *)
  func view(forKey key: UITransitionContextViewKey) -> UIView?
  @available(iOS 2.0, *)
  var containerView: UIView { get }
  @available(iOS 8.0, *)
  var targetTransform: CGAffineTransform { get }
}
protocol UIViewControllerTransitionCoordinator : UIViewControllerTransitionCoordinatorContext {
  func animate(alongsideTransition animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  @available(iOS 2.0, *)
  func animateAlongsideTransition(in view: UIView?, animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  @available(iOS, introduced: 7.0, deprecated: 10.0)
  func notifyWhenInteractionEnds(_ handler: @escaping (UIViewControllerTransitionCoordinatorContext) -> Void)
  @available(iOS 10.0, *)
  func notifyWhenInteractionChanges(_ handler: @escaping (UIViewControllerTransitionCoordinatorContext) -> Void)
}
extension UIViewController {
  @available(iOS 7.0, *)
  var transitionCoordinator: UIViewControllerTransitionCoordinator? { get }
}
