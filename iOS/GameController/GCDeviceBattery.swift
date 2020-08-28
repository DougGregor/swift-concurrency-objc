
extension GCDeviceBattery {
  enum State : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case discharging
    case charging
    case full
  }
}
@available(iOS 14.0, *)
class GCDeviceBattery : NSObject {
  var batteryLevel: Float { get }
  var batteryState: GCDeviceBattery.State { get }
}
