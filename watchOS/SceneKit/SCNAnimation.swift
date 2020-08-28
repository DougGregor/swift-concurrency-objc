
protocol SCNAnimationProtocol : NSObjectProtocol {
}
typealias SCNAnimationDidStartBlock = (SCNAnimation, SCNAnimatable) -> Void
typealias SCNAnimationDidStopBlock = (SCNAnimation, SCNAnimatable, Bool) -> Void
@available(watchOS 4.0, *)
class SCNTimingFunction : NSObject, NSSecureCoding {
  /*not inherited*/ init(timingMode: SCNActionTimingMode)
}
protocol SCNAnimatable : NSObjectProtocol {
  func addAnimation(_ animation: SCNAnimationProtocol, forKey key: String?)
  @available(watchOS 4.0, *)
  func addAnimationPlayer(_ player: SCNAnimationPlayer, forKey key: String?)
  func removeAllAnimations()
  func removeAnimation(forKey key: String)
  var animationKeys: [String] { get }
  @available(watchOS 4.0, *)
  func animationPlayer(forKey key: String) -> SCNAnimationPlayer?
  @available(watchOS 4.0, *)
  func removeAnimation(forKey key: String, blendOutDuration duration: CGFloat)
  @available(watchOS, introduced: 3.0, deprecated: 4.0)
  func removeAnimation(forKey key: String, fadeOutDuration duration: CGFloat)
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use -[SCNAnimationPlayer setPaused:] instead")
  func pauseAnimation(forKey key: String)
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use -[SCNAnimationPlayer setPaused:] instead")
  func resumeAnimation(forKey key: String)
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use -[SCNAnimationPlayer setSpeed:] instead")
  func setAnimationSpeed(_ speed: CGFloat, forKey key: String)
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use -[SCNAnimationPlayer paused] instead")
  func isAnimationPaused(forKey key: String) -> Bool
}
@available(watchOS 4.0, *)
class SCNAnimation : NSObject, SCNAnimationProtocol, NSCopying, NSSecureCoding {
  /*not inherited*/ init(contentsOf animationUrl: URL)
  /*not inherited*/ init(named animationName: String)
  var duration: TimeInterval
  var keyPath: String?
  var timingFunction: SCNTimingFunction
  var blendInDuration: TimeInterval
  var blendOutDuration: TimeInterval
  var isRemovedOnCompletion: Bool
  var isAppliedOnCompletion: Bool
  var repeatCount: CGFloat
  var autoreverses: Bool
  var startDelay: TimeInterval
  var timeOffset: TimeInterval
  var fillsForward: Bool
  var fillsBackward: Bool
  var usesSceneTimeBase: Bool
  var animationDidStart: SCNAnimationDidStartBlock?
  var animationDidStop: SCNAnimationDidStopBlock?
  var animationEvents: [SCNAnimationEvent]?
  var isAdditive: Bool
  var isCumulative: Bool
}
@available(watchOS 4.0, *)
class SCNAnimationPlayer : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {
  /*not inherited*/ init(animation: SCNAnimation)
  var animation: SCNAnimation { get }
  var speed: CGFloat
  var blendFactor: CGFloat
  var paused: Bool
  func play()
  func stop()
  func stop(withBlendOutDuration duration: TimeInterval)
}
typealias SCNAnimationEventBlock = (SCNAnimationProtocol, Any, Bool) -> Void
class SCNAnimationEvent : NSObject {
  convenience init(keyTime time: CGFloat, block eventBlock: @escaping SCNAnimationEventBlock)
}
