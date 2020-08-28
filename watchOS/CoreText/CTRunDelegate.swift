
class CTRunDelegate : _CFObject {
}
@available(watchOS 2.0, *)
func CTRunDelegateGetTypeID() -> CFTypeID
typealias CTRunDelegateDeallocateCallback = @convention(c) (UnsafeMutableRawPointer) -> Void
typealias CTRunDelegateGetAscentCallback = @convention(c) (UnsafeMutableRawPointer) -> CGFloat
typealias CTRunDelegateGetDescentCallback = @convention(c) (UnsafeMutableRawPointer) -> CGFloat
typealias CTRunDelegateGetWidthCallback = @convention(c) (UnsafeMutableRawPointer) -> CGFloat
struct CTRunDelegateCallbacks {
  var version: CFIndex
  var dealloc: CTRunDelegateDeallocateCallback
  var getAscent: CTRunDelegateGetAscentCallback
  var getDescent: CTRunDelegateGetDescentCallback
  var getWidth: CTRunDelegateGetWidthCallback
  init(version: CFIndex, dealloc: CTRunDelegateDeallocateCallback, getAscent: CTRunDelegateGetAscentCallback, getDescent: CTRunDelegateGetDescentCallback, getWidth: CTRunDelegateGetWidthCallback)
}
var kCTRunDelegateVersion1: Int { get }
var kCTRunDelegateCurrentVersion: Int { get }
@available(watchOS 2.0, *)
func CTRunDelegateCreate(_ callbacks: UnsafePointer<CTRunDelegateCallbacks>, _ refCon: UnsafeMutableRawPointer?) -> CTRunDelegate?
@available(watchOS 2.0, *)
func CTRunDelegateGetRefCon(_ runDelegate: CTRunDelegate) -> UnsafeMutableRawPointer
