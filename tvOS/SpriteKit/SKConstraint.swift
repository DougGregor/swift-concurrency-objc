
@available(tvOS 8.0, *)
class SKRange : NSObject, NSSecureCoding, NSCopying {
  init(lowerLimit lower: CGFloat, upperLimit upper: CGFloat)
  convenience init(lowerLimit lower: CGFloat)
  convenience init(upperLimit upper: CGFloat)
  convenience init(constantValue value: CGFloat)
  convenience init(value: CGFloat, variance: CGFloat)
  class func withNoLimits() -> Self
  var lowerLimit: CGFloat
  var upperLimit: CGFloat
}
@available(tvOS 8.0, *)
class SKConstraint : NSObject, NSSecureCoding, NSCopying {
  var enabled: Bool
  var referenceNode: SKNode?
  class func positionX(_ range: SKRange) -> Self
  class func positionY(_ range: SKRange) -> Self
  class func positionX(_ xRange: SKRange, y yRange: SKRange) -> Self
  class func distance(_ range: SKRange, to node: SKNode) -> Self
  class func distance(_ range: SKRange, to point: CGPoint) -> Self
  class func distance(_ range: SKRange, to point: CGPoint, in node: SKNode) -> Self
  class func zRotation(_ zRange: SKRange) -> Self
  class func orient(to node: SKNode, offset radians: SKRange) -> Self
  class func orient(to point: CGPoint, offset radians: SKRange) -> Self
  class func orient(to point: CGPoint, in node: SKNode, offset radians: SKRange) -> Self
}
