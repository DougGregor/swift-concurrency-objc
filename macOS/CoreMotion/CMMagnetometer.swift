
struct CMMagneticField {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
class CMMagnetometerData : CMLogItem {
  var magneticField: CMMagneticField { get }
}
