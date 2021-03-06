
class SKPhysicsBody : NSObject, NSCopying, NSSecureCoding {
  /*not inherited*/ init(circleOfRadius r: CGFloat)
  /*not inherited*/ init(circleOfRadius r: CGFloat, center: CGPoint)
  /*not inherited*/ init(rectangleOf s: CGSize)
  /*not inherited*/ init(rectangleOf s: CGSize, center: CGPoint)
  /*not inherited*/ init(polygonFrom path: CGPath)
  /*not inherited*/ init(edgeFrom p1: CGPoint, to p2: CGPoint)
  /*not inherited*/ init(edgeChainFrom path: CGPath)
  /*not inherited*/ init(edgeLoopFrom path: CGPath)
  /*not inherited*/ init(edgeLoopFrom rect: CGRect)
  @available(watchOS 1.0, *)
  /*not inherited*/ init(texture: SKTexture, size: CGSize)
  @available(watchOS 1.0, *)
  /*not inherited*/ init(texture: SKTexture, alphaThreshold: Float, size: CGSize)
  /*not inherited*/ init(bodies: [SKPhysicsBody])
  var isDynamic: Bool
  var usesPreciseCollisionDetection: Bool
  var allowsRotation: Bool
  @available(watchOS 1.0, *)
  var pinned: Bool
  var isResting: Bool
  var friction: CGFloat
  @available(watchOS 1.0, *)
  var charge: CGFloat
  var restitution: CGFloat
  var linearDamping: CGFloat
  var angularDamping: CGFloat
  var density: CGFloat
  var mass: CGFloat
  var area: CGFloat { get }
  var affectedByGravity: Bool
  @available(watchOS 1.0, *)
  var fieldBitMask: UInt32
  var categoryBitMask: UInt32
  var collisionBitMask: UInt32
  var contactTestBitMask: UInt32
  var joints: [SKPhysicsJoint] { get }
  weak var node: @sil_weak SKNode? { get }
  var velocity: CGVector
  var angularVelocity: CGFloat
  func applyForce(_ force: CGVector)
  func applyForce(_ force: CGVector, at point: CGPoint)
  func applyTorque(_ torque: CGFloat)
  func applyImpulse(_ impulse: CGVector)
  func applyImpulse(_ impulse: CGVector, at point: CGPoint)
  func applyAngularImpulse(_ impulse: CGFloat)
  func allContactedBodies() -> [SKPhysicsBody]
}
