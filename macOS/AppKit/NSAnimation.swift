
extension NSAnimation {
  enum Curve : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case easeInOut
    case easeIn
    case easeOut
    case linear
  }
  enum BlockingMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case blocking
    case nonblocking
    case nonblockingThreaded
  }
  typealias Progress = Float
  class let progressMarkNotification: NSNotification.Name
  class let progressMarkUserInfoKey: String
}
class NSAnimation : NSObject, NSCopying, NSCoding {
  init(duration: TimeInterval, animationCurve: NSAnimation.Curve)
  func start()
  func stop()
  var isAnimating: Bool { get }
  var currentProgress: NSAnimation.Progress
  var duration: TimeInterval
  var animationBlockingMode: NSAnimation.BlockingMode
  var frameRate: Float
  var animationCurve: NSAnimation.Curve
  var currentValue: Float { get }
  weak var delegate: @sil_weak NSAnimationDelegate?
  var progressMarks: [NSNumber]
  func addProgressMark(_ progressMark: NSAnimation.Progress)
  func removeProgressMark(_ progressMark: NSAnimation.Progress)
  func start(when animation: NSAnimation, reachesProgress startProgress: NSAnimation.Progress)
  func stop(when animation: NSAnimation, reachesProgress stopProgress: NSAnimation.Progress)
  func clearStart()
  func clearStop()
  var runLoopModesForAnimating: [RunLoop.Mode]? { get }
}
protocol NSAnimationDelegate : NSObjectProtocol {
  optional func animationShouldStart(_ animation: NSAnimation) -> Bool
  @asyncHandler optional func animationDidStop(_ animation: NSAnimation)
  @asyncHandler optional func animationDidEnd(_ animation: NSAnimation)
  optional func animation(_ animation: NSAnimation, valueForProgress progress: NSAnimation.Progress) -> Float
  @asyncHandler optional func animation(_ animation: NSAnimation, didReachProgressMark progress: NSAnimation.Progress)
}
extension NSViewAnimation {
  struct Key : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct EffectName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSViewAnimation.Key {
  static let target: NSViewAnimation.Key
  static let startFrame: NSViewAnimation.Key
  static let endFrame: NSViewAnimation.Key
  static let effect: NSViewAnimation.Key
}
extension NSViewAnimation.EffectName {
  static let fadeIn: NSViewAnimation.EffectName
  static let fadeOut: NSViewAnimation.EffectName
}
class NSViewAnimation : NSAnimation {
  init(viewAnimations: [[NSViewAnimation.Key : Any]])
  var viewAnimations: [[NSViewAnimation.Key : Any]]
}
typealias NSAnimatablePropertyKey = String
@available(macOS 10.5, *)
protocol NSAnimatablePropertyContainer {
  @available(macOS 10.5, *)
  func animator() -> Self
  @available(macOS 10.5, *)
  var animations: [NSAnimatablePropertyKey : Any] { get set }
  @available(macOS 10.5, *)
  func animation(forKey key: NSAnimatablePropertyKey) -> Any?
  @available(macOS 10.5, *)
  static func defaultAnimation(forKey key: NSAnimatablePropertyKey) -> Any?
}
@available(macOS 10.5, *)
let NSAnimationTriggerOrderIn: String
@available(macOS 10.5, *)
let NSAnimationTriggerOrderOut: String
