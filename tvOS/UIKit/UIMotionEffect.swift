
@available(tvOS 7.0, *)
class UIMotionEffect : NSObject, NSCopying, NSCoding {
  func keyPathsAndRelativeValues(forViewerOffset viewerOffset: UIOffset) -> [String : Any]?
}
extension UIInterpolatingMotionEffect {
  enum EffectType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case tiltAlongHorizontalAxis
    case tiltAlongVerticalAxis
  }
}
@available(tvOS 7.0, *)
class UIInterpolatingMotionEffect : UIMotionEffect {
  init(keyPath: String, type: UIInterpolatingMotionEffect.EffectType)
  var keyPath: String { get }
  var type: UIInterpolatingMotionEffect.EffectType { get }
  var minimumRelativeValue: Any?
  var maximumRelativeValue: Any?
}
@available(tvOS 7.0, *)
class UIMotionEffectGroup : UIMotionEffect {
  var motionEffects: [UIMotionEffect]?
}
