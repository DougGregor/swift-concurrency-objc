
class SCNConstraint : NSObject, NSCopying, NSSecureCoding, SCNAnimatable {
  var isEnabled: Bool
  var influenceFactor: CGFloat
  @available(watchOS 4.0, *)
  var isIncremental: Bool
}
class SCNLookAtConstraint : SCNConstraint {
  convenience init(target: SCNNode?)
  var target: SCNNode?
  @available(watchOS 4.0, *)
  var targetOffset: SCNVector3
  @available(watchOS 4.0, *)
  var localFront: SCNVector3
  @available(watchOS 4.0, *)
  var worldUp: SCNVector3
  var isGimbalLockEnabled: Bool
}
struct SCNBillboardAxis : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var X: SCNBillboardAxis { get }
  static var Y: SCNBillboardAxis { get }
  static var Z: SCNBillboardAxis { get }
  static var all: SCNBillboardAxis { get }
}
@available(watchOS 2.0, *)
class SCNBillboardConstraint : SCNConstraint {
  var freeAxes: SCNBillboardAxis
}
class SCNTransformConstraint : SCNConstraint {
  convenience init(inWorldSpace world: Bool, with block: @escaping (SCNNode, SCNMatrix4) -> SCNMatrix4)
  @available(watchOS 4.0, *)
  class func positionConstraint(inWorldSpace world: Bool, with block: @escaping (SCNNode, SCNVector3) -> SCNVector3) -> Self
  @available(watchOS 4.0, *)
  class func orientationConstraint(inWorldSpace world: Bool, with block: @escaping (SCNNode, SCNQuaternion) -> SCNQuaternion) -> Self
}
class SCNIKConstraint : SCNConstraint {
  @available(watchOS 2.0, *)
  init(chainRootNode: SCNNode)
  class func inverseKinematicsConstraint(chainRootNode: SCNNode) -> Self
  var chainRootNode: SCNNode { get }
  var targetPosition: SCNVector3
  func setMaxAllowedRotationAngle(_ angle: CGFloat, forJoint node: SCNNode)
  func maxAllowedRotationAngle(forJoint node: SCNNode) -> CGFloat
}
@available(watchOS 4.0, *)
class SCNDistanceConstraint : SCNConstraint {
  convenience init(target: SCNNode?)
  var target: SCNNode?
  var minimumDistance: CGFloat
  var maximumDistance: CGFloat
}
@available(watchOS 4.0, *)
class SCNReplicatorConstraint : SCNConstraint {
  convenience init(target: SCNNode?)
  var target: SCNNode?
  var replicatesOrientation: Bool
  var replicatesPosition: Bool
  var replicatesScale: Bool
  var orientationOffset: SCNQuaternion
  var positionOffset: SCNVector3
  var scaleOffset: SCNVector3
}
@available(watchOS 4.0, *)
class SCNAccelerationConstraint : SCNConstraint {
  var maximumLinearAcceleration: CGFloat
  var maximumLinearVelocity: CGFloat
  var decelerationDistance: CGFloat
  var damping: CGFloat
}
@available(watchOS 4.0, *)
class SCNSliderConstraint : SCNConstraint {
  var collisionCategoryBitMask: Int
  var radius: CGFloat
  var offset: SCNVector3
}
@available(watchOS 4.0, *)
protocol SCNAvoidOccluderConstraintDelegate : NSObjectProtocol {
  optional func avoidOccluderConstraint(_ constraint: SCNAvoidOccluderConstraint, shouldAvoidOccluder occluder: SCNNode, for node: SCNNode) -> Bool
  optional func avoidOccluderConstraint(_ constraint: SCNAvoidOccluderConstraint, didAvoidOccluder occluder: SCNNode, for node: SCNNode)
}
@available(watchOS 4.0, *)
class SCNAvoidOccluderConstraint : SCNConstraint {
  convenience init(target: SCNNode?)
  unowned(unsafe) var delegate: @sil_unmanaged SCNAvoidOccluderConstraintDelegate
  var target: SCNNode?
  var occluderCategoryBitMask: Int
  var bias: CGFloat
}
