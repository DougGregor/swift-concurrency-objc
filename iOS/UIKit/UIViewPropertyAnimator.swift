
@available(iOS 10.0, *)
class UIViewPropertyAnimator : NSObject, UIViewImplicitlyAnimating, NSCopying {
  @NSCopying var timingParameters: UITimingCurveProvider? { get }
  var duration: TimeInterval { get }
  var delay: TimeInterval { get }
  var isUserInteractionEnabled: Bool
  var isManualHitTestingEnabled: Bool
  var isInterruptible: Bool
  @available(iOS 11.0, *)
  var scrubsLinearly: Bool
  @available(iOS 11.0, *)
  var pausesOnCompletion: Bool
  init(duration: TimeInterval, timingParameters parameters: UITimingCurveProvider)
  convenience init(duration: TimeInterval, curve: UIView.AnimationCurve, animations: (() -> Void)? = nil)
  convenience init(duration: TimeInterval, controlPoint1 point1: CGPoint, controlPoint2 point2: CGPoint, animations: (() -> Void)? = nil)
  convenience init(duration: TimeInterval, dampingRatio ratio: CGFloat, animations: (() -> Void)? = nil)
  class func runningPropertyAnimator(withDuration duration: TimeInterval, delay: TimeInterval, options: UIView.AnimationOptions = [], animations: @escaping () -> Void, completion: ((UIViewAnimatingPosition) -> Void)? = nil) -> Self
}
