
extension CMDeviceMotion {
  enum SensorLocation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case headphoneLeft
    case headphoneRight
  }
}
enum CMMagneticFieldCalibrationAccuracy : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case uncalibrated
  case low
  case medium
  case high
}
struct CMCalibratedMagneticField {
  var field: CMMagneticField
  var accuracy: CMMagneticFieldCalibrationAccuracy
  init()
  init(field: CMMagneticField, accuracy: CMMagneticFieldCalibrationAccuracy)
}
@available(watchOS 2.0, *)
class CMDeviceMotion : CMLogItem {
  var attitude: CMAttitude { get }
  var rotationRate: CMRotationRate { get }
  var gravity: CMAcceleration { get }
  var userAcceleration: CMAcceleration { get }
  @available(watchOS 2.0, *)
  var magneticField: CMCalibratedMagneticField { get }
  @available(watchOS 4.0, *)
  var heading: Double { get }
  @available(watchOS 7.0, *)
  var sensorLocation: CMDeviceMotion.SensorLocation { get }
}
