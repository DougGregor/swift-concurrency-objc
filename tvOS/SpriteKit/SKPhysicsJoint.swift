
class SKPhysicsJoint : NSObject, NSSecureCoding {
  var bodyA: SKPhysicsBody
  var bodyB: SKPhysicsBody
  var reactionForce: CGVector { get }
  var reactionTorque: CGFloat { get }
}
class SKPhysicsJointPin : SKPhysicsJoint {
  class func joint(withBodyA bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint) -> SKPhysicsJointPin
  var shouldEnableLimits: Bool
  var lowerAngleLimit: CGFloat
  var upperAngleLimit: CGFloat
  var frictionTorque: CGFloat
  var rotationSpeed: CGFloat
}
class SKPhysicsJointSpring : SKPhysicsJoint {
  class func joint(withBodyA bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchorA: CGPoint, anchorB: CGPoint) -> SKPhysicsJointSpring
  var damping: CGFloat
  var frequency: CGFloat
}
class SKPhysicsJointFixed : SKPhysicsJoint {
  class func joint(withBodyA bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint) -> SKPhysicsJointFixed
}
class SKPhysicsJointSliding : SKPhysicsJoint {
  class func joint(withBodyA bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchor: CGPoint, axis: CGVector) -> SKPhysicsJointSliding
  var shouldEnableLimits: Bool
  var lowerDistanceLimit: CGFloat
  var upperDistanceLimit: CGFloat
}
class SKPhysicsJointLimit : SKPhysicsJoint {
  var maxLength: CGFloat
  class func joint(withBodyA bodyA: SKPhysicsBody, bodyB: SKPhysicsBody, anchorA: CGPoint, anchorB: CGPoint) -> SKPhysicsJointLimit
}
