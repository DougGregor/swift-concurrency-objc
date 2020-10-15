
struct CMRotationRate {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
class CMGyroData : CMLogItem {
  var rotationRate: CMRotationRate { get }
}
