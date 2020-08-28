
struct CMAcceleration {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
class CMAccelerometerData : CMLogItem {
  var acceleration: CMAcceleration { get }
}
