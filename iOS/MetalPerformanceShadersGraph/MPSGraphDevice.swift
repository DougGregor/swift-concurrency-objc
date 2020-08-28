
enum MPSGraphDeviceType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(iOS 14.0, *)
  case metal
}
@available(iOS 14.0, *)
class MPSGraphDevice : NSObject {
  var type: MPSGraphDeviceType { get }
  var metalDevice: MTLDevice? { get }
  convenience init(mtlDevice metalDevice: MTLDevice)
}
