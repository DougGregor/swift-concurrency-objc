
typealias CFFileDescriptorNativeDescriptor = Int32
class CFFileDescriptor : _CFObject {
}
var kCFFileDescriptorReadCallBack: CFOptionFlags { get }
var kCFFileDescriptorWriteCallBack: CFOptionFlags { get }
typealias CFFileDescriptorCallBack = @convention(c) (CFFileDescriptor?, CFOptionFlags, UnsafeMutableRawPointer?) -> Void
struct CFFileDescriptorContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer!
  var retain: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!
  var release: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!
  var copyDescription: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFString>?)!
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer!, retain: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!, release: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!, copyDescription: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFString>?)!)
}
@available(watchOS 2.0, *)
func CFFileDescriptorGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CFFileDescriptorCreate(_ allocator: CFAllocator!, _ fd: CFFileDescriptorNativeDescriptor, _ closeOnInvalidate: Bool, _ callout: CFFileDescriptorCallBack!, _ context: UnsafePointer<CFFileDescriptorContext>!) -> CFFileDescriptor!
@available(watchOS 2.0, *)
func CFFileDescriptorGetNativeDescriptor(_ f: CFFileDescriptor!) -> CFFileDescriptorNativeDescriptor
@available(watchOS 2.0, *)
func CFFileDescriptorGetContext(_ f: CFFileDescriptor!, _ context: UnsafeMutablePointer<CFFileDescriptorContext>!)
@available(watchOS 2.0, *)
func CFFileDescriptorEnableCallBacks(_ f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
@available(watchOS 2.0, *)
func CFFileDescriptorDisableCallBacks(_ f: CFFileDescriptor!, _ callBackTypes: CFOptionFlags)
@available(watchOS 2.0, *)
func CFFileDescriptorInvalidate(_ f: CFFileDescriptor!)
@available(watchOS 2.0, *)
func CFFileDescriptorIsValid(_ f: CFFileDescriptor!) -> Bool
@available(watchOS 2.0, *)
func CFFileDescriptorCreateRunLoopSource(_ allocator: CFAllocator!, _ f: CFFileDescriptor!, _ order: CFIndex) -> CFRunLoopSource!
