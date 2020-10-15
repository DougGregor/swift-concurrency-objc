
@available(tvOS 9.0, *)
class SKReachConstraints : NSObject, NSSecureCoding {
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  init(lowerAngleLimit: CGFloat, upperAngleLimit: CGFloat)
}
