
@available(tvOS 10.0, *)
enum UIViewAnimatingState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inactive
  case active
  case stopped
}
@available(tvOS 10.0, *)
enum UIViewAnimatingPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case end
  case start
  case current
}
protocol UIViewAnimating : NSObjectProtocol {
  @available(tvOS 10.0, *)
  var state: UIViewAnimatingState { get }
  var isRunning: Bool { get }
  var isReversed: Bool { get set }
  var fractionComplete: CGFloat { get set }
  func startAnimation()
  func startAnimation(afterDelay delay: TimeInterval)
  func pauseAnimation()
  func stopAnimation(_ withoutFinishing: Bool)
  @available(tvOS 10.0, *)
  func finishAnimation(at finalPosition: UIViewAnimatingPosition)
}
protocol UIViewImplicitlyAnimating : UIViewAnimating {
  optional func addAnimations(_ animation: @escaping () -> Void, delayFactor: CGFloat)
  optional func addAnimations(_ animation: @escaping () -> Void)
  @available(tvOS 10.0, *)
  optional func addCompletion(_ completion: @escaping (UIViewAnimatingPosition) -> Void)
  optional func continueAnimation(withTimingParameters parameters: UITimingCurveProvider?, durationFactor: CGFloat)
}
