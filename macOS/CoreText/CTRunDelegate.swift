
class CTRunDelegate : _CFObject {
}
@available(macOS 10.5, *)
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
@available(macOS 10.5, *)
func CTRunDelegateCreate(_ callbacks: UnsafePointer<CTRunDelegateCallbacks>, _ refCon: UnsafeMutableRawPointer?) -> CTRunDelegate?
@available(macOS 10.5, *)
func CTRunDelegateGetRefCon(_ runDelegate: CTRunDelegate) -> UnsafeMutableRawPointer
