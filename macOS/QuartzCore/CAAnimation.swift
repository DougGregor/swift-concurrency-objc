
struct CAAnimationCalculationMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CAAnimationRotationMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CATransitionType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CATransitionSubtype : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 10.5, *)
class CAAnimation : NSObject, NSSecureCoding, NSCopying, CAMediaTiming, CAAction {
  class func defaultValue(forKey key: String) -> Any?
  func shouldArchiveValue(forKey key: String) -> Bool
  var timingFunction: CAMediaTimingFunction?
  var delegate: CAAnimationDelegate?
  var isRemovedOnCompletion: Bool
}
protocol CAAnimationDelegate : NSObjectProtocol {
  @available(macOS 10.5, *)
  optional func animationDidStart(_ anim: CAAnimation)
  @available(macOS 10.5, *)
  optional func animationDidStop(_ anim: CAAnimation, finished flag: Bool)
}
@available(macOS 10.5, *)
class CAPropertyAnimation : CAAnimation {
  convenience init(keyPath path: String?)
  var keyPath: String?
  var isAdditive: Bool
  var isCumulative: Bool
  var valueFunction: CAValueFunction?
}
@available(macOS 10.5, *)
class CABasicAnimation : CAPropertyAnimation {
  var fromValue: Any?
  var toValue: Any?
  var byValue: Any?
}
@available(macOS 10.5, *)
class CAKeyframeAnimation : CAPropertyAnimation {
  var values: [Any]?
  var path: CGPath?
  var keyTimes: [NSNumber]?
  var timingFunctions: [CAMediaTimingFunction]?
  var calculationMode: CAAnimationCalculationMode
  var tensionValues: [NSNumber]?
  var continuityValues: [NSNumber]?
  var biasValues: [NSNumber]?
  var rotationMode: CAAnimationRotationMode?
}
extension CAAnimationCalculationMode {
  @available(macOS 10.5, *)
  static let linear: CAAnimationCalculationMode
  @available(macOS 10.5, *)
  static let discrete: CAAnimationCalculationMode
  @available(macOS 10.5, *)
  static let paced: CAAnimationCalculationMode
  @available(macOS 10.7, *)
  static let cubic: CAAnimationCalculationMode
  @available(macOS 10.7, *)
  static let cubicPaced: CAAnimationCalculationMode
}
extension CAAnimationRotationMode {
  @available(macOS 10.5, *)
  static let rotateAuto: CAAnimationRotationMode
  @available(macOS 10.5, *)
  static let rotateAutoReverse: CAAnimationRotationMode
}
@available(macOS 10.11, *)
class CASpringAnimation : CABasicAnimation {
  var mass: CGFloat
  var stiffness: CGFloat
  var damping: CGFloat
  var initialVelocity: CGFloat
  var settlingDuration: CFTimeInterval { get }
}
@available(macOS 10.5, *)
class CATransition : CAAnimation {
  var type: CATransitionType
  var subtype: CATransitionSubtype?
  var startProgress: Float
  var endProgress: Float
  var filter: Any?
}
extension CATransitionType {
  @available(macOS 10.5, *)
  static let fade: CATransitionType
  @available(macOS 10.5, *)
  static let moveIn: CATransitionType
  @available(macOS 10.5, *)
  static let push: CATransitionType
  @available(macOS 10.5, *)
  static let reveal: CATransitionType
}
extension CATransitionSubtype {
  @available(macOS 10.5, *)
  static let fromRight: CATransitionSubtype
  @available(macOS 10.5, *)
  static let fromLeft: CATransitionSubtype
  @available(macOS 10.5, *)
  static let fromTop: CATransitionSubtype
  @available(macOS 10.5, *)
  static let fromBottom: CATransitionSubtype
}
@available(macOS 10.5, *)
class CAAnimationGroup : CAAnimation {
  var animations: [CAAnimation]?
}
