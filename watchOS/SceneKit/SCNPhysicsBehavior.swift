
class SCNPhysicsBehavior : NSObject, NSSecureCoding {
}
class SCNPhysicsHingeJoint : SCNPhysicsBehavior {
  convenience init(bodyA: SCNPhysicsBody, axisA: SCNVector3, anchorA: SCNVector3, bodyB: SCNPhysicsBody, axisB: SCNVector3, anchorB: SCNVector3)
  convenience init(body: SCNPhysicsBody, axis: SCNVector3, anchor: SCNVector3)
  var bodyA: SCNPhysicsBody { get }
  var axisA: SCNVector3
  var anchorA: SCNVector3
  var bodyB: SCNPhysicsBody? { get }
  var axisB: SCNVector3
  var anchorB: SCNVector3
}
class SCNPhysicsBallSocketJoint : SCNPhysicsBehavior {
  convenience init(bodyA: SCNPhysicsBody, anchorA: SCNVector3, bodyB: SCNPhysicsBody, anchorB: SCNVector3)
  convenience init(body: SCNPhysicsBody, anchor: SCNVector3)
  var bodyA: SCNPhysicsBody { get }
  var anchorA: SCNVector3
  var bodyB: SCNPhysicsBody? { get }
  var anchorB: SCNVector3
}
class SCNPhysicsSliderJoint : SCNPhysicsBehavior {
  convenience init(bodyA: SCNPhysicsBody, axisA: SCNVector3, anchorA: SCNVector3, bodyB: SCNPhysicsBody, axisB: SCNVector3, anchorB: SCNVector3)
  convenience init(body: SCNPhysicsBody, axis: SCNVector3, anchor: SCNVector3)
  var bodyA: SCNPhysicsBody { get }
  var axisA: SCNVector3
  var anchorA: SCNVector3
  var bodyB: SCNPhysicsBody? { get }
  var axisB: SCNVector3
  var anchorB: SCNVector3
  var minimumLinearLimit: CGFloat
  var maximumLinearLimit: CGFloat
  var minimumAngularLimit: CGFloat
  var maximumAngularLimit: CGFloat
  var motorTargetLinearVelocity: CGFloat
  var motorMaximumForce: CGFloat
  var motorTargetAngularVelocity: CGFloat
  var motorMaximumTorque: CGFloat
}
@available(watchOS 4.0, *)
class SCNPhysicsConeTwistJoint : SCNPhysicsBehavior {
  convenience init(bodyA: SCNPhysicsBody, frameA: SCNMatrix4, bodyB: SCNPhysicsBody, frameB: SCNMatrix4)
  convenience init(body: SCNPhysicsBody, frame: SCNMatrix4)
  var bodyA: SCNPhysicsBody { get }
  var frameA: SCNMatrix4
  var bodyB: SCNPhysicsBody? { get }
  var frameB: SCNMatrix4
  var maximumAngularLimit1: CGFloat
  var maximumAngularLimit2: CGFloat
  var maximumTwistAngle: CGFloat
}
class SCNPhysicsVehicleWheel : NSObject, NSCopying, NSSecureCoding {
  convenience init(node: SCNNode)
  var node: SCNNode { get }
  var suspensionStiffness: CGFloat
  var suspensionCompression: CGFloat
  var suspensionDamping: CGFloat
  var maximumSuspensionTravel: CGFloat
  var frictionSlip: CGFloat
  var maximumSuspensionForce: CGFloat
  var connectionPosition: SCNVector3
  var steeringAxis: SCNVector3
  var axle: SCNVector3
  var radius: CGFloat
  var suspensionRestLength: CGFloat
}
class SCNPhysicsVehicle : SCNPhysicsBehavior {
  convenience init(chassisBody: SCNPhysicsBody, wheels: [SCNPhysicsVehicleWheel])
  var speedInKilometersPerHour: CGFloat { get }
  var wheels: [SCNPhysicsVehicleWheel] { get }
  var chassisBody: SCNPhysicsBody { get }
  func applyEngineForce(_ value: CGFloat, forWheelAt index: Int)
  func setSteeringAngle(_ value: CGFloat, forWheelAt index: Int)
  func applyBrakingForce(_ value: CGFloat, forWheelAt index: Int)
}
