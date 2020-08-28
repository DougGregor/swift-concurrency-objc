
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
class CMDeviceMotion : CMLogItem {
  var attitude: CMAttitude { get }
  var rotationRate: CMRotationRate { get }
  var gravity: CMAcceleration { get }
  var userAcceleration: CMAcceleration { get }
  var magneticField: CMCalibratedMagneticField { get }
  var heading: Double { get }
  var sensorLocation: CMDeviceMotion.SensorLocation { get }
}
