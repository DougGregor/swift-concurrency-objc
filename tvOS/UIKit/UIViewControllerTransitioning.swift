
extension UITransitionContextViewControllerKey {
  @available(tvOS 7.0, *)
  static let from: UITransitionContextViewControllerKey
  @available(tvOS 7.0, *)
  static let to: UITransitionContextViewControllerKey
}
extension UITransitionContextViewKey {
  @available(tvOS 8.0, *)
  static let from: UITransitionContextViewKey
  @available(tvOS 8.0, *)
  static let to: UITransitionContextViewKey
}
protocol UIViewControllerContextTransitioning : NSObjectProtocol {
  @available(tvOS 2.0, *)
  var containerView: UIView { get }
  var isAnimated: Bool { get }
  var isInteractive: Bool { get }
  var transitionWasCancelled: Bool { get }
  var presentationStyle: UIModalPresentationStyle { get }
  func updateInteractiveTransition(_ percentComplete: CGFloat)
  func finishInteractiveTransition()
  func cancelInteractiveTransition()
  @available(tvOS 10.0, *)
  func pauseInteractiveTransition()
  func completeTransition(_ didComplete: Bool)
  @available(tvOS 2.0, *)
  func viewController(forKey key: UITransitionContextViewControllerKey) -> UIViewController?
  @available(tvOS 8.0, *)
  func view(forKey key: UITransitionContextViewKey) -> UIView?
  @available(tvOS 8.0, *)
  var targetTransform: CGAffineTransform { get }
  @available(tvOS 2.0, *)
  func initialFrame(for vc: UIViewController) -> CGRect
  @available(tvOS 2.0, *)
  func finalFrame(for vc: UIViewController) -> CGRect
}
protocol UIViewControllerAnimatedTransitioning : NSObjectProtocol {
  func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval
  func animateTransition(using transitionContext: UIViewControllerContextTransitioning)
  @available(tvOS 10.0, *)
  optional func interruptibleAnimator(using transitionContext: UIViewControllerContextTransitioning) -> UIViewImplicitlyAnimating
  optional func animationEnded(_ transitionCompleted: Bool)
}
protocol UIViewControllerInteractiveTransitioning : NSObjectProtocol {
  func startInteractiveTransition(_ transitionContext: UIViewControllerContextTransitioning)
  optional var completionSpeed: CGFloat { get }
  @available(tvOS 2.0, *)
  optional var completionCurve: UIView.AnimationCurve { get }
  @available(tvOS 10.0, *)
  optional var wantsInteractiveStart: Bool { get }
}
protocol UIViewControllerTransitioningDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning?
  @available(tvOS 2.0, *)
  optional func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning?
  optional func interactionControllerForPresentation(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  optional func interactionControllerForDismissal(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?
  @available(tvOS 8.0, *)
  optional func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController?
}
@available(tvOS 7.0, *)
class UIPercentDrivenInteractiveTransition : NSObject, UIViewControllerInteractiveTransitioning {
  var duration: CGFloat { get }
  var percentComplete: CGFloat { get }
  @available(tvOS 10.0, *)
  var timingCurve: UITimingCurveProvider?
  @available(tvOS 10.0, *)
  func pause()
  func update(_ percentComplete: CGFloat)
  func cancel()
  func finish()
}
