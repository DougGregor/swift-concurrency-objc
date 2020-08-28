
enum SCNPhysicsBodyType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `static`
  case dynamic
  case kinematic
}
struct SCNPhysicsCollisionCategory : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var `default`: SCNPhysicsCollisionCategory { get }
  static var `static`: SCNPhysicsCollisionCategory { get }
  static var all: SCNPhysicsCollisionCategory { get }
}
class SCNPhysicsBody : NSObject, NSCopying, NSSecureCoding {
  class func `static`() -> Self
  class func dynamic() -> Self
  class func kinematic() -> Self
  convenience init(type: SCNPhysicsBodyType, shape: SCNPhysicsShape?)
  var type: SCNPhysicsBodyType
  var mass: CGFloat
  @available(watchOS 2.0, *)
  var momentOfInertia: SCNVector3
  @available(watchOS 2.0, *)
  var usesDefaultMomentOfInertia: Bool
  var charge: CGFloat
  var friction: CGFloat
  var restitution: CGFloat
  var rollingFriction: CGFloat
  var physicsShape: SCNPhysicsShape?
  var isResting: Bool { get }
  var allowsResting: Bool
  var velocity: SCNVector3
  var angularVelocity: SCNVector4
  var damping: CGFloat
  var angularDamping: CGFloat
  var velocityFactor: SCNVector3
  var angularVelocityFactor: SCNVector3
  var categoryBitMask: Int
  var collisionBitMask: Int
  @available(watchOS 2.0, *)
  var contactTestBitMask: Int
  @available(watchOS 2.0, *)
  var isAffectedByGravity: Bool
  func applyForce(_ direction: SCNVector3, asImpulse impulse: Bool)
  func applyForce(_ direction: SCNVector3, at position: SCNVector3, asImpulse impulse: Bool)
  func applyTorque(_ torque: SCNVector4, asImpulse impulse: Bool)
  func clearAllForces()
  func resetTransform()
  @available(watchOS 5.0, *)
  func setResting(_ resting: Bool)
  @available(watchOS 5.0, *)
  var continuousCollisionDetectionThreshold: CGFloat
  @available(watchOS 5.0, *)
  var centerOfMassOffset: SCNVector3
  @available(watchOS 5.0, *)
  var linearRestingThreshold: CGFloat
  @available(watchOS 5.0, *)
  var angularRestingThreshold: CGFloat
}
