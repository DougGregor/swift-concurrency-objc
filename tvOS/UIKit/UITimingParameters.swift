
@available(tvOS 10.0, *)
class UICubicTimingParameters : NSObject, UITimingCurveProvider {
  var animationCurve: UIView.AnimationCurve { get }
  var controlPoint1: CGPoint { get }
  var controlPoint2: CGPoint { get }
  init(animationCurve curve: UIView.AnimationCurve)
  init(controlPoint1 point1: CGPoint, controlPoint2 point2: CGPoint)
}
@available(tvOS 10.0, *)
class UISpringTimingParameters : NSObject, UITimingCurveProvider {
  var initialVelocity: CGVector { get }
  init(dampingRatio ratio: CGFloat, initialVelocity velocity: CGVector)
  init(mass: CGFloat, stiffness: CGFloat, damping: CGFloat, initialVelocity velocity: CGVector)
  convenience init(dampingRatio ratio: CGFloat)
}
