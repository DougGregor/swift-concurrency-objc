
@available(macOS 10.10, *)
class SKReachConstraints : NSObject, NSSecureCoding {
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  init(lowerAngleLimit: CGFloat, upperAngleLimit: CGFloat)
}
