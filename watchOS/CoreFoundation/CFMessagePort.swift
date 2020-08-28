
class CFMessagePort : _CFObject {
}
var kCFMessagePortSuccess: Int32 { get }
var kCFMessagePortSendTimeout: Int32 { get }
var kCFMessagePortReceiveTimeout: Int32 { get }
var kCFMessagePortIsInvalid: Int32 { get }
var kCFMessagePortTransportError: Int32 { get }
var kCFMessagePortBecameInvalidError: Int32 { get }
struct CFMessagePortContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer!
  var retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!
  var release: (@convention(c) (UnsafeRawPointer?) -> Void)!
  var copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer!, retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!, release: (@convention(c) (UnsafeRawPointer?) -> Void)!, copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!)
}
typealias CFMessagePortCallBack = @convention(c) (CFMessagePort?, Int32, CFData?, UnsafeMutableRawPointer?) -> Unmanaged<CFData>?
typealias CFMessagePortInvalidationCallBack = @convention(c) (CFMessagePort?, UnsafeMutableRawPointer?) -> Void
func CFMessagePortGetTypeID() -> CFTypeID
func CFMessagePortCreateLocal(_ allocator: CFAllocator!, _ name: CFString!, _ callout: CFMessagePortCallBack!, _ context: UnsafeMutablePointer<CFMessagePortContext>!, _ shouldFreeInfo: UnsafeMutablePointer<DarwinBoolean>!) -> CFMessagePort!
func CFMessagePortCreateRemote(_ allocator: CFAllocator!, _ name: CFString!) -> CFMessagePort!
func CFMessagePortIsRemote(_ ms: CFMessagePort!) -> Bool
func CFMessagePortGetName(_ ms: CFMessagePort!) -> CFString!
func CFMessagePortSetName(_ ms: CFMessagePort!, _ newName: CFString!) -> Bool
func CFMessagePortGetContext(_ ms: CFMessagePort!, _ context: UnsafeMutablePointer<CFMessagePortContext>!)
func CFMessagePortInvalidate(_ ms: CFMessagePort!)
func CFMessagePortIsValid(_ ms: CFMessagePort!) -> Bool
func CFMessagePortGetInvalidationCallBack(_ ms: CFMessagePort!) -> CFMessagePortInvalidationCallBack!
func CFMessagePortSetInvalidationCallBack(_ ms: CFMessagePort!, _ callout: CFMessagePortInvalidationCallBack!)
func CFMessagePortSendRequest(_ remote: CFMessagePort!, _ msgid: Int32, _ data: CFData!, _ sendTimeout: CFTimeInterval, _ rcvTimeout: CFTimeInterval, _ replyMode: CFString!, _ returnData: UnsafeMutablePointer<Unmanaged<CFData>?>!) -> Int32
func CFMessagePortCreateRunLoopSource(_ allocator: CFAllocator!, _ local: CFMessagePort!, _ order: CFIndex) -> CFRunLoopSource!
@available(watchOS 2.0, *)
func CFMessagePortSetDispatchQueue(_ ms: CFMessagePort!, _ queue: DispatchQueue!)
