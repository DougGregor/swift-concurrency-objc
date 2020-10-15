
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
@available(iOS 8.0, *)
class GCMotion : NSObject {
  weak var controller: @sil_weak GCController? { get }
  var valueChangedHandler: GCMotionValueChangedHandler?
  @available(iOS 14.0, *)
  var sensorsRequireManualActivation: Bool { get }
  @available(iOS 14.0, *)
  var sensorsActive: Bool
  @available(iOS 14.0, *)
  var hasGravityAndUserAcceleration: Bool { get }
  var gravity: GCAcceleration { get }
  var userAcceleration: GCAcceleration { get }
  @available(iOS 14.0, *)
  var acceleration: GCAcceleration { get }
  @available(iOS, introduced: 11.0, deprecated: 14.0, message: "hasAttitudeAndRotationRate has been deprecated, use -hasAttitude and -hasRotationRate instead")
  var hasAttitudeAndRotationRate: Bool { get }
  @available(iOS 14.0, *)
  var hasAttitude: Bool { get }
  @available(iOS 14.0, *)
  var hasRotationRate: Bool { get }
  @available(iOS 11.0, *)
  var attitude: GCQuaternion { get }
  @available(iOS 11.0, *)
  var rotationRate: GCRotationRate { get }
  @available(iOS 13.0, *)
  func setGravity(_ gravity: GCAcceleration)
  @available(iOS 13.0, *)
  func setUserAcceleration(_ userAcceleration: GCAcceleration)
  @available(iOS 14.0, *)
  func setAcceleration(_ acceleration: GCAcceleration)
  @available(iOS 13.0, *)
  func setAttitude(_ attitude: GCQuaternion)
  @available(iOS 13.0, *)
  func setRotationRate(_ rotationRate: GCRotationRate)
  @available(iOS 13.0, *)
  func setStateFrom(_ motion: GCMotion)
}
typealias GCMotionValueChangedHandler = (GCMotion) -> Void
