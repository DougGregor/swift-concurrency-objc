
@available(watchOS 1.0, *)
class SKReachConstraints : NSObject, NSSecureCoding {
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  init(lowerAngleLimit: CGFloat, upperAngleLimit: CGFloat)
}
