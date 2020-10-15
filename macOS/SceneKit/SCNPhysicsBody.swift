
@available(macOS 10.10, *)
enum SCNPhysicsBodyType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `static`
  case dynamic
  case kinematic
}
@available(macOS 10.10, *)
struct SCNPhysicsCollisionCategory : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var `default`: SCNPhysicsCollisionCategory { get }
  static var `static`: SCNPhysicsCollisionCategory { get }
  static var all: SCNPhysicsCollisionCategory { get }
}
@available(macOS 10.10, *)
class SCNPhysicsBody : NSObject, NSCopying, NSSecureCoding {
  class func `static`() -> Self
  class func dynamic() -> Self
  class func kinematic() -> Self
  convenience init(type: SCNPhysicsBodyType, shape: SCNPhysicsShape?)
  var type: SCNPhysicsBodyType
  var mass: CGFloat
  @available(macOS 10.11, *)
  var momentOfInertia: SCNVector3
  @available(macOS 10.11, *)
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
  @available(macOS 10.11, *)
  var contactTestBitMask: Int
  @available(macOS 10.11, *)
  var isAffectedByGravity: Bool
  func applyForce(_ direction: SCNVector3, asImpulse impulse: Bool)
  func applyForce(_ direction: SCNVector3, at position: SCNVector3, asImpulse impulse: Bool)
  func applyTorque(_ torque: SCNVector4, asImpulse impulse: Bool)
  func clearAllForces()
  func resetTransform()
  @available(macOS 10.14, *)
  func setResting(_ resting: Bool)
  @available(macOS 10.14, *)
  var continuousCollisionDetectionThreshold: CGFloat
  @available(macOS 10.14, *)
  var centerOfMassOffset: SCNVector3
  @available(macOS 10.14, *)
  var linearRestingThreshold: CGFloat
  @available(macOS 10.14, *)
  var angularRestingThreshold: CGFloat
}
