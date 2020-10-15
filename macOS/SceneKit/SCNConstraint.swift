
@available(macOS 10.9, *)
class SCNConstraint : NSObject, NSCopying, NSSecureCoding, SCNAnimatable {
  @available(macOS 10.10, *)
  var isEnabled: Bool
  @available(macOS 10.10, *)
  var influenceFactor: CGFloat
  @available(macOS 10.13, *)
  var isIncremental: Bool
}
@available(macOS 10.9, *)
class SCNLookAtConstraint : SCNConstraint {
  convenience init(target: SCNNode?)
  var target: SCNNode?
  @available(macOS 10.13, *)
  var targetOffset: SCNVector3
  @available(macOS 10.13, *)
  var localFront: SCNVector3
  @available(macOS 10.13, *)
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
@available(macOS 10.11, *)
class SCNBillboardConstraint : SCNConstraint {
  var freeAxes: SCNBillboardAxis
}
@available(macOS 10.9, *)
class SCNTransformConstraint : SCNConstraint {
  convenience init(inWorldSpace world: Bool, with block: @escaping (SCNNode, SCNMatrix4) -> SCNMatrix4)
  @available(macOS 10.13, *)
  class func positionConstraint(inWorldSpace world: Bool, with block: @escaping (SCNNode, SCNVector3) -> SCNVector3) -> Self
  @available(macOS 10.13, *)
  class func orientationConstraint(inWorldSpace world: Bool, with block: @escaping (SCNNode, SCNQuaternion) -> SCNQuaternion) -> Self
}
@available(macOS 10.10, *)
class SCNIKConstraint : SCNConstraint {
  @available(macOS 10.11, *)
  init(chainRootNode: SCNNode)
  class func inverseKinematicsConstraint(chainRootNode: SCNNode) -> Self
  var chainRootNode: SCNNode { get }
  var targetPosition: SCNVector3
  func setMaxAllowedRotationAngle(_ angle: CGFloat, forJoint node: SCNNode)
  func maxAllowedRotationAngle(forJoint node: SCNNode) -> CGFloat
}
@available(macOS 10.13, *)
class SCNDistanceConstraint : SCNConstraint {
  convenience init(target: SCNNode?)
  var target: SCNNode?
  var minimumDistance: CGFloat
  var maximumDistance: CGFloat
}
@available(macOS 10.13, *)
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
@available(macOS 10.13, *)
class SCNAccelerationConstraint : SCNConstraint {
  var maximumLinearAcceleration: CGFloat
  var maximumLinearVelocity: CGFloat
  var decelerationDistance: CGFloat
  var damping: CGFloat
}
@available(macOS 10.13, *)
class SCNSliderConstraint : SCNConstraint {
  var collisionCategoryBitMask: Int
  var radius: CGFloat
  var offset: SCNVector3
}
@available(macOS 10.13, *)
protocol SCNAvoidOccluderConstraintDelegate : NSObjectProtocol {
  optional func avoidOccluderConstraint(_ constraint: SCNAvoidOccluderConstraint, shouldAvoidOccluder occluder: SCNNode, for node: SCNNode) -> Bool
  @asyncHandler optional func avoidOccluderConstraint(_ constraint: SCNAvoidOccluderConstraint, didAvoidOccluder occluder: SCNNode, for node: SCNNode)
}
@available(macOS 10.13, *)
class SCNAvoidOccluderConstraint : SCNConstraint {
  convenience init(target: SCNNode?)
  unowned(unsafe) var delegate: @sil_unmanaged SCNAvoidOccluderConstraintDelegate
  var target: SCNNode?
  var occluderCategoryBitMask: Int
  var bias: CGFloat
}
