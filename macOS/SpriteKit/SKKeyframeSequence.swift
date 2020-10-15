
enum SKInterpolationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case linear
  case spline
  case step
}
enum SKRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case clamp
  case loop
}
class SKKeyframeSequence : NSObject, NSSecureCoding, NSCopying {
  init(keyframeValues values: [Any], times: [NSNumber])
  convenience init(capacity numItems: Int)
  func count() -> Int
  func addKeyframeValue(_ value: Any, time: CGFloat)
  func removeLastKeyframe()
  func removeKeyframe(at index: Int)
  func setKeyframeValue(_ value: Any, for index: Int)
  func setKeyframeTime(_ time: CGFloat, for index: Int)
  func setKeyframeValue(_ value: Any, time: CGFloat, for index: Int)
  func getKeyframeValue(for index: Int) -> Any
  func getKeyframeTime(for index: Int) -> CGFloat
  func sample(atTime time: CGFloat) -> Any?
  var interpolationMode: SKInterpolationMode
  var repeatMode: SKRepeatMode
}
