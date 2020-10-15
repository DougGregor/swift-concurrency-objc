
struct GCAcceleration {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
struct GCRotationRate {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
struct GCEulerAngles {
  var pitch: Double
  var yaw: Double
  var roll: Double
  init()
  init(pitch: Double, yaw: Double, roll: Double)
}
struct GCQuaternion {
  var x: Double
  var y: Double
  var z: Double
  var w: Double
  init()
  init(x: Double, y: Double, z: Double, w: Double)
}
@available(tvOS 8.0, *)
class GCMotion : NSObject {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCMotionValueChangedHandler?
  @available(tvOS 14.0, *)
  var sensorsRequireManualActivation: Bool { get }
  @available(tvOS 14.0, *)
  var sensorsActive: Bool
  @available(tvOS 14.0, *)
  var hasGravityAndUserAcceleration: Bool { get }
  var gravity: GCAcceleration { get }
  var userAcceleration: GCAcceleration { get }
  @available(tvOS 14.0, *)
  var acceleration: GCAcceleration { get }
  @available(tvOS, introduced: 11.0, deprecated: 14.0, message: "hasAttitudeAndRotationRate has been deprecated, use -hasAttitude and -hasRotationRate instead")
  var hasAttitudeAndRotationRate: Bool { get }
  @available(tvOS 14.0, *)
  var hasAttitude: Bool { get }
  @available(tvOS 14.0, *)
  var hasRotationRate: Bool { get }
  @available(tvOS 11.0, *)
  var attitude: GCQuaternion { get }
  @available(tvOS 11.0, *)
  var rotationRate: GCRotationRate { get }
  @available(tvOS 13.0, *)
  func setGravity(_ gravity: GCAcceleration)
  @available(tvOS 13.0, *)
  func setUserAcceleration(_ userAcceleration: GCAcceleration)
  @available(tvOS 14.0, *)
  func setAcceleration(_ acceleration: GCAcceleration)
  @available(tvOS 13.0, *)
  func setAttitude(_ attitude: GCQuaternion)
  @available(tvOS 13.0, *)
  func setRotationRate(_ rotationRate: GCRotationRate)
  @available(tvOS 13.0, *)
  func setStateFrom(_ motion: GCMotion)
}
typealias GCMotionValueChangedHandler = (GCMotion) -> Void
