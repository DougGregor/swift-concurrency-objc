
struct PGPhysicalMemoryRange_s {
  var physicalAddress: UInt64
  var physicalLength: UInt64
  init()
  init(physicalAddress: UInt64, physicalLength: UInt64)
}
@available(macOS 11.0, *)
typealias PGPhysicalMemoryRange_t = PGPhysicalMemoryRange_s
@available(macOS 11.0, *)
typealias PGCreateTask = (UInt64, UnsafeMutablePointer<UnsafeMutableRawPointer?>) -> OpaquePointer?
@available(macOS 11.0, *)
typealias PGDestroyTask = (OpaquePointer) -> Void
@available(macOS 11.0, *)
typealias PGMapMemory = (OpaquePointer, UInt32, UInt64, Bool, UnsafeMutablePointer<PGPhysicalMemoryRange_t>) -> Bool
@available(macOS 11.0, *)
typealias PGUnmapMemory = (OpaquePointer, UInt64, UInt64) -> Bool
@available(macOS 11.0, *)
typealias PGReadMemory = (UInt64, UInt64, UnsafeMutableRawPointer) -> Bool
@available(macOS 11.0, *)
typealias PGRaiseInterrupt = (UInt32) -> Void
@available(macOS 11.0, *)
typealias PGTraceRangeHandler = (UnsafeMutablePointer<PGPhysicalMemoryRange_t>) -> Void
@available(macOS 11.0, *)
typealias PGAddTraceRange = (UnsafeMutablePointer<PGPhysicalMemoryRange_t>, @escaping PGTraceRangeHandler) -> OpaquePointer?
@available(macOS 11.0, *)
typealias PGRemoveTraceRange = (OpaquePointer) -> Void
@available(macOS 11.0, *)
class PGDeviceDescriptor : NSObject {
  @available(macOS 11.0, *)
  var device: MTLDevice?
  @available(macOS 11.0, *)
  var mmioLength: Int
  @available(macOS 11.0, *)
  var createTask: PGCreateTask?
  @available(macOS 11.0, *)
  var destroyTask: PGDestroyTask?
  @available(macOS 11.0, *)
  var mapMemory: PGMapMemory?
  @available(macOS 11.0, *)
  var unmapMemory: PGUnmapMemory?
  @available(macOS 11.0, *)
  var readMemory: PGReadMemory?
  @available(macOS 11.0, *)
  var raiseInterrupt: PGRaiseInterrupt?
  @available(macOS 11.0, *)
  var addTraceRange: PGAddTraceRange?
  @available(macOS 11.0, *)
  var removeTraceRange: PGRemoveTraceRange?
}
@available(macOS 11.0, *)
protocol PGDevice : NSObjectProtocol {
  @available(macOS 11.0, *)
  func mmioRead(atOffset offset: Int) -> UInt32
  @available(macOS 11.0, *)
  func mmioWrite(atOffset offset: Int, value: UInt32)
  @available(macOS 11.0, *)
  func newDisplay(with descriptor: PGDisplayDescriptor, port: Int, serialNum: UInt32) -> PGDisplay?
  @available(macOS 11.0, *)
  func willSuspend()
  @available(macOS 11.0, *)
  func finishSuspend() -> Data?
  @available(macOS 11.0, *)
  func willResume(withSuspendState suspendState: Data, error: NSErrorPointer) -> Bool
  @available(macOS 11.0, *)
  @asyncHandler func didResume()
}
@available(macOS 11.0, *)
func PGNewDeviceWithDescriptor(_ descriptor: PGDeviceDescriptor) -> PGDevice?
@available(macOS 11.0, *)
let PGResumeErrorDomain: String
@available(macOS 11.0, *)
enum PGResumeErrorCode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case internalFault
  case invalidSuspendStateVersion
  case invalidContent
  case invalidGuestVersion
  case incompatibleDevice
}
@available(macOS 11.0, *)
func PGCopyOptionROMURL() -> URL
