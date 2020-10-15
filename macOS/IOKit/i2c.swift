
typealias IOI2CRequestCompletion = @convention(c) (UnsafeMutablePointer<IOI2CRequest>?) -> Void
var kIOI2CNoTransactionType: Int { get }
var kIOI2CSimpleTransactionType: Int { get }
var kIOI2CDDCciReplyTransactionType: Int { get }
var kIOI2CCombinedTransactionType: Int { get }
var kIOI2CDisplayPortNativeTransactionType: Int { get }
var kIOI2CUseSubAddressCommFlag: Int { get }
struct IOI2CRequest {
  var sendTransactionType: IOOptionBits
  var replyTransactionType: IOOptionBits
  var sendAddress: UInt32
  var replyAddress: UInt32
  var sendSubAddress: UInt8
  var replySubAddress: UInt8
  var __reservedA: (UInt8, UInt8)
  var minReplyDelay: UInt64
  var result: IOReturn
  var commFlags: IOOptionBits
  var __padA: UInt32
  var sendBytes: UInt32
  var __reservedB: (UInt32, UInt32)
  var __padB: UInt32
  var replyBytes: UInt32
  var completion: IOI2CRequestCompletion!
  var sendBuffer: vm_address_t
  var replyBuffer: vm_address_t
  var __reservedC: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(sendTransactionType: IOOptionBits, replyTransactionType: IOOptionBits, sendAddress: UInt32, replyAddress: UInt32, sendSubAddress: UInt8, replySubAddress: UInt8, __reservedA: (UInt8, UInt8), minReplyDelay: UInt64, result: IOReturn, commFlags: IOOptionBits, __padA: UInt32, sendBytes: UInt32, __reservedB: (UInt32, UInt32), __padB: UInt32, replyBytes: UInt32, completion: IOI2CRequestCompletion!, sendBuffer: vm_address_t, replyBuffer: vm_address_t, __reservedC: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
var kIOI2CInterfaceClassName: String { get }
var kIOI2CInterfaceIDKey: String { get }
var kIOI2CBusTypeKey: String { get }
var kIOI2CTransactionTypesKey: String { get }
var kIOI2CSupportedCommFlagsKey: String { get }
var kIOFBI2CInterfaceInfoKey: String { get }
var kIOFBI2CInterfaceIDsKey: String { get }
var kIOI2CBusTypeI2C: Int { get }
var kIOI2CBusTypeDisplayPort: Int { get }
struct IOI2CBusTiming {
  var bitTimeout: AbsoluteTime
  var byteTimeout: AbsoluteTime
  var acknowledgeTimeout: AbsoluteTime
  var startTimeout: AbsoluteTime
  var holdTime: AbsoluteTime
  var riseFallTime: AbsoluteTime
  var __reservedA: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(bitTimeout: AbsoluteTime, byteTimeout: AbsoluteTime, acknowledgeTimeout: AbsoluteTime, startTimeout: AbsoluteTime, holdTime: AbsoluteTime, riseFallTime: AbsoluteTime, __reservedA: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
var kIOI2CBusNumberMask: Int { get }
func IOFBGetI2CInterfaceCount(_ framebuffer: io_service_t, _ count: UnsafeMutablePointer<IOItemCount>!) -> IOReturn
func IOFBCopyI2CInterfaceForBus(_ framebuffer: io_service_t, _ bus: IOOptionBits, _ interface: UnsafeMutablePointer<io_service_t>!) -> IOReturn
typealias IOI2CConnectRef = OpaquePointer
func IOI2CCopyInterfaceForID(_ identifier: CFTypeRef!, _ interface: UnsafeMutablePointer<io_service_t>!) -> IOReturn
func IOI2CInterfaceOpen(_ interface: io_service_t, _ options: IOOptionBits, _ connect: UnsafeMutablePointer<IOI2CConnectRef?>!) -> IOReturn
func IOI2CInterfaceClose(_ connect: IOI2CConnectRef!, _ options: IOOptionBits) -> IOReturn
func IOI2CSendRequest(_ connect: IOI2CConnectRef!, _ options: IOOptionBits, _ request: UnsafeMutablePointer<IOI2CRequest>!) -> IOReturn
