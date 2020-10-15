
class CFHost : _CFObject {
}
@available(macOS 10.3, *)
let kCFStreamErrorDomainNetDB: Int32
@available(macOS 10.3, *)
let kCFStreamErrorDomainSystemConfiguration: Int32
enum CFHostInfoType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case addresses
  case names
  case reachability
}
struct CFHostClientContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer?
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack?
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer?, retain: CFAllocatorRetainCallBack?, release: CFAllocatorReleaseCallBack?, copyDescription: CFAllocatorCopyDescriptionCallBack?)
}
typealias CFHostClientCallBack = @convention(c) (CFHost, CFHostInfoType, UnsafePointer<CFStreamError>?, UnsafeMutableRawPointer?) -> Void
@available(macOS 10.3, *)
func CFHostGetTypeID() -> CFTypeID
@available(macOS 10.3, *)
func CFHostCreateWithName(_ allocator: CFAllocator?, _ hostname: CFString) -> Unmanaged<CFHost>
@available(macOS 10.3, *)
func CFHostCreateWithAddress(_ allocator: CFAllocator?, _ addr: CFData) -> Unmanaged<CFHost>
@available(macOS 10.3, *)
func CFHostCreateCopy(_ alloc: CFAllocator?, _ host: CFHost) -> Unmanaged<CFHost>
@available(macOS 10.3, *)
func CFHostStartInfoResolution(_ theHost: CFHost, _ info: CFHostInfoType, _ error: UnsafeMutablePointer<CFStreamError>?) -> Bool
@available(macOS 10.3, *)
func CFHostGetAddressing(_ theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>?) -> Unmanaged<CFArray>?
@available(macOS 10.3, *)
func CFHostGetNames(_ theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>?) -> Unmanaged<CFArray>?
@available(macOS 10.3, *)
func CFHostGetReachability(_ theHost: CFHost, _ hasBeenResolved: UnsafeMutablePointer<DarwinBoolean>?) -> Unmanaged<CFData>?
@available(macOS 10.3, *)
func CFHostCancelInfoResolution(_ theHost: CFHost, _ info: CFHostInfoType)
@available(macOS 10.3, *)
func CFHostSetClient(_ theHost: CFHost, _ clientCB: CFHostClientCallBack?, _ clientContext: UnsafeMutablePointer<CFHostClientContext>?) -> Bool
@available(macOS 10.3, *)
func CFHostScheduleWithRunLoop(_ theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.3, *)
func CFHostUnscheduleFromRunLoop(_ theHost: CFHost, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
