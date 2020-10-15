
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
@available(macOS 10.10, *)
class GCMotion : NSObject {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCMotionValueChangedHandler?
  @available(macOS 11.0, *)
  var sensorsRequireManualActivation: Bool { get }
  @available(macOS 11.0, *)
  var sensorsActive: Bool
  @available(macOS 11.0, *)
  var hasGravityAndUserAcceleration: Bool { get }
  var gravity: GCAcceleration { get }
  var userAcceleration: GCAcceleration { get }
  @available(macOS 11.0, *)
  var acceleration: GCAcceleration { get }
  @available(macOS, introduced: 10.13, deprecated: 11.0, message: "hasAttitudeAndRotationRate has been deprecated, use -hasAttitude and -hasRotationRate instead")
  var hasAttitudeAndRotationRate: Bool { get }
  @available(macOS 11.0, *)
  var hasAttitude: Bool { get }
  @available(macOS 11.0, *)
  var hasRotationRate: Bool { get }
  @available(macOS 10.13, *)
  var attitude: GCQuaternion { get }
  @available(macOS 10.13, *)
  var rotationRate: GCRotationRate { get }
  @available(macOS 10.15, *)
  func setGravity(_ gravity: GCAcceleration)
  @available(macOS 10.15, *)
  func setUserAcceleration(_ userAcceleration: GCAcceleration)
  @available(macOS 11.0, *)
  func setAcceleration(_ acceleration: GCAcceleration)
  @available(macOS 10.15, *)
  func setAttitude(_ attitude: GCQuaternion)
  @available(macOS 10.15, *)
  func setRotationRate(_ rotationRate: GCRotationRate)
  @available(macOS 10.15, *)
  func setStateFrom(_ motion: GCMotion)
}
typealias GCMotionValueChangedHandler = (GCMotion) -> Void
