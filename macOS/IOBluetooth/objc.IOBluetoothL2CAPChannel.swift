
struct IOBluetoothL2CAPChannelEventType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOBluetoothL2CAPChannelEventTypeData: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeOpenComplete: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeClosed: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeReconfigured: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeWriteComplete: IOBluetoothL2CAPChannelEventType { get }
var kIOBluetoothL2CAPChannelEventTypeQueueSpaceAvailable: IOBluetoothL2CAPChannelEventType { get }
struct IOBluetoothL2CAPChannelDataBlock {
  var dataPtr: UnsafeMutableRawPointer!
  var dataSize: Int
  init()
  init(dataPtr: UnsafeMutableRawPointer!, dataSize: Int)
}
struct IOBluetoothL2CAPChannelEvent {
  struct __Unnamed_union_u {
    var data: IOBluetoothL2CAPChannelDataBlock
    var writeRefCon: UnsafeMutableRawPointer!
    var padding: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    init(data: IOBluetoothL2CAPChannelDataBlock)
    init(writeRefCon: UnsafeMutableRawPointer!)
    init(padding: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
    init()
  }
  var eventType: IOBluetoothL2CAPChannelEventType
  var u: IOBluetoothL2CAPChannelEvent.__Unnamed_union_u
  var status: IOReturn
  init()
  init(eventType: IOBluetoothL2CAPChannelEventType, u: IOBluetoothL2CAPChannelEvent.__Unnamed_union_u, status: IOReturn)
}
typealias IOBluetoothL2CAPChannelIncomingDataListener = @convention(c) (IOBluetoothL2CAPChannelRef?, UnsafeMutableRawPointer?, UInt16, UnsafeMutableRawPointer?) -> Void
typealias IOBluetoothL2CAPChannelIncomingEventListener = @convention(c) (IOBluetoothL2CAPChannelRef?, UnsafeMutableRawPointer?, UnsafeMutablePointer<IOBluetoothL2CAPChannelEvent>?) -> Void
class IOBluetoothL2CAPChannel : IOBluetoothObject, PortDelegate {
  class func register(forChannelOpenNotifications object: Any!, selector: Selector!) -> IOBluetoothUserNotification!
  class func register(forChannelOpenNotifications object: Any!, selector: Selector!, withPSM psm: BluetoothL2CAPPSM, direction inDirection: IOBluetoothUserNotificationChannelDirection) -> IOBluetoothUserNotification!
  class func withObjectID(_ objectID: IOBluetoothObjectID) -> Self!
  func close() -> IOReturn
  var outgoingMTU: BluetoothL2CAPMTU { get }
  var incomingMTU: BluetoothL2CAPMTU { get }
  func requestRemoteMTU(_ remoteMTU: BluetoothL2CAPMTU) -> IOReturn
  func writeAsyncTrap(_ data: UnsafeMutableRawPointer!, length: UInt16, refcon: UnsafeMutableRawPointer!) -> IOReturn
  func writeAsync(_ data: UnsafeMutableRawPointer!, length: UInt16, refcon: UnsafeMutableRawPointer!) -> IOReturn
  func writeSync(_ data: UnsafeMutableRawPointer!, length: UInt16) -> IOReturn
  func setDelegate(_ channelDelegate: Any!) -> IOReturn
  func setDelegate(_ channelDelegate: Any!, withConfiguration channelConfiguration: [AnyHashable : Any]!) -> IOReturn
  func delegate() -> Any!
  var device: IOBluetoothDevice! { get }
  var objectID: IOBluetoothObjectID { get }
  var psm: BluetoothL2CAPPSM { get }
  var localChannelID: BluetoothL2CAPChannelID { get }
  var remoteChannelID: BluetoothL2CAPChannelID { get }
  func isIncoming() -> Bool
  func register(forChannelCloseNotification observer: Any!, selector inSelector: Selector!) -> IOBluetoothUserNotification!
}
protocol IOBluetoothL2CAPChannelDelegate {
  optional func l2capChannelData(_ l2capChannel: IOBluetoothL2CAPChannel!, data dataPointer: UnsafeMutableRawPointer!, length dataLength: Int)
  optional func l2capChannelOpenComplete(_ l2capChannel: IOBluetoothL2CAPChannel!, status error: IOReturn)
  optional func l2capChannelClosed(_ l2capChannel: IOBluetoothL2CAPChannel!)
  optional func l2capChannelReconfigured(_ l2capChannel: IOBluetoothL2CAPChannel!)
  optional func l2capChannelWriteComplete(_ l2capChannel: IOBluetoothL2CAPChannel!, refcon: UnsafeMutableRawPointer!, status error: IOReturn)
  optional func l2capChannelQueueSpaceAvailable(_ l2capChannel: IOBluetoothL2CAPChannel!)
}
extension NSNotification.Name {
  static let IOBluetoothL2CAPChannelPublished: NSNotification.Name
  static let IOBluetoothL2CAPChannelTerminated: NSNotification.Name
}
