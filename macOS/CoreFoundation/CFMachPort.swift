
class CFMachPort : _CFObject {
}
struct CFMachPortContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer!
  var retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!
  var release: (@convention(c) (UnsafeRawPointer?) -> Void)!
  var copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer!, retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!, release: (@convention(c) (UnsafeRawPointer?) -> Void)!, copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!)
}
typealias CFMachPortCallBack = @convention(c) (CFMachPort?, UnsafeMutableRawPointer?, CFIndex, UnsafeMutableRawPointer?) -> Void
typealias CFMachPortInvalidationCallBack = @convention(c) (CFMachPort?, UnsafeMutableRawPointer?) -> Void
func CFMachPortGetTypeID() -> CFTypeID
func CFMachPortCreate(_ allocator: CFAllocator!, _ callout: CFMachPortCallBack!, _ context: UnsafeMutablePointer<CFMachPortContext>!, _ shouldFreeInfo: UnsafeMutablePointer<DarwinBoolean>!) -> CFMachPort!
func CFMachPortCreateWithPort(_ allocator: CFAllocator!, _ portNum: mach_port_t, _ callout: CFMachPortCallBack!, _ context: UnsafeMutablePointer<CFMachPortContext>!, _ shouldFreeInfo: UnsafeMutablePointer<DarwinBoolean>!) -> CFMachPort!
func CFMachPortGetPort(_ port: CFMachPort!) -> mach_port_t
func CFMachPortGetContext(_ port: CFMachPort!, _ context: UnsafeMutablePointer<CFMachPortContext>!)
func CFMachPortInvalidate(_ port: CFMachPort!)
func CFMachPortIsValid(_ port: CFMachPort!) -> Bool
func CFMachPortGetInvalidationCallBack(_ port: CFMachPort!) -> CFMachPortInvalidationCallBack!
func CFMachPortSetInvalidationCallBack(_ port: CFMachPort!, _ callout: CFMachPortInvalidationCallBack!)
func CFMachPortCreateRunLoopSource(_ allocator: CFAllocator!, _ port: CFMachPort!, _ order: CFIndex) -> CFRunLoopSource!
