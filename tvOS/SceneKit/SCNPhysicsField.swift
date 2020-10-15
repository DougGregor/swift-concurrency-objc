
enum SCNPhysicsFieldScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case insideExtent
  case outsideExtent
}
class SCNPhysicsField : NSObject, NSCopying, NSSecureCoding {
  var strength: CGFloat
  var falloffExponent: CGFloat
  var minimumDistance: CGFloat
  var isActive: Bool
  var isExclusive: Bool
  var halfExtent: SCNVector3
  var usesEllipsoidalExtent: Bool
  var scope: SCNPhysicsFieldScope
  var offset: SCNVector3
  var direction: SCNVector3
  var categoryBitMask: Int
  class func drag() -> SCNPhysicsField
  class func vortex() -> SCNPhysicsField
  class func radialGravity() -> SCNPhysicsField
  class func linearGravity() -> SCNPhysicsField
  class func noiseField(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField
  class func turbulenceField(smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField
  class func spring() -> SCNPhysicsField
  class func electric() -> SCNPhysicsField
  class func magnetic() -> SCNPhysicsField
  class func customField(evaluationBlock block: @escaping SCNFieldForceEvaluator) -> SCNPhysicsField
}
typealias SCNFieldForceEvaluator = (SCNVector3, SCNVector3, Float, Float, TimeInterval) -> SCNVector3
