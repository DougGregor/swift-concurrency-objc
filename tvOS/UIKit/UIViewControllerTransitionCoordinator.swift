
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
  @available(tvOS 10.0, *)
  var isInterruptible: Bool { get }
  var isInteractive: Bool { get }
  var isCancelled: Bool { get }
  var transitionDuration: TimeInterval { get }
  var percentComplete: CGFloat { get }
  var completionVelocity: CGFloat { get }
  @available(tvOS 2.0, *)
  var completionCurve: UIView.AnimationCurve { get }
  @available(tvOS 2.0, *)
  func viewController(forKey key: UITransitionContextViewControllerKey) -> UIViewController?
  @available(tvOS 8.0, *)
  func view(forKey key: UITransitionContextViewKey) -> UIView?
  @available(tvOS 2.0, *)
  var containerView: UIView { get }
  @available(tvOS 8.0, *)
  var targetTransform: CGAffineTransform { get }
}
protocol UIViewControllerTransitionCoordinator : UIViewControllerTransitionCoordinatorContext {
  func animate(alongsideTransition animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  @available(tvOS 2.0, *)
  func animateAlongsideTransition(in view: UIView?, animation: ((UIViewControllerTransitionCoordinatorContext) -> Void)?, completion: ((UIViewControllerTransitionCoordinatorContext) -> Void)? = nil) -> Bool
  @available(tvOS, introduced: 7.0, deprecated: 10.0)
  func notifyWhenInteractionEnds(_ handler: @escaping (UIViewControllerTransitionCoordinatorContext) -> Void)
  @available(tvOS 10.0, *)
  func notifyWhenInteractionChanges(_ handler: @escaping (UIViewControllerTransitionCoordinatorContext) -> Void)
}
extension UIViewController {
  @available(tvOS 7.0, *)
  var transitionCoordinator: UIViewControllerTransitionCoordinator? { get }
}
