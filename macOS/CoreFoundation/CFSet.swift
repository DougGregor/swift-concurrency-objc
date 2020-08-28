
typealias CFSetRetainCallBack = @convention(c) (CFAllocator?, UnsafeRawPointer?) -> UnsafeRawPointer?
typealias CFSetReleaseCallBack = @convention(c) (CFAllocator?, UnsafeRawPointer?) -> Void
typealias CFSetCopyDescriptionCallBack = @convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?
typealias CFSetEqualCallBack = @convention(c) (UnsafeRawPointer?, UnsafeRawPointer?) -> DarwinBoolean
typealias CFSetHashCallBack = @convention(c) (UnsafeRawPointer?) -> CFHashCode
struct CFSetCallBacks {
  var version: CFIndex
  var retain: CFSetRetainCallBack!
  var release: CFSetReleaseCallBack!
  var copyDescription: CFSetCopyDescriptionCallBack!
  var equal: CFSetEqualCallBack!
  var hash: CFSetHashCallBack!
  init()
  init(version: CFIndex, retain: CFSetRetainCallBack!, release: CFSetReleaseCallBack!, copyDescription: CFSetCopyDescriptionCallBack!, equal: CFSetEqualCallBack!, hash: CFSetHashCallBack!)
}
let kCFTypeSetCallBacks: CFSetCallBacks
let kCFCopyStringSetCallBacks: CFSetCallBacks
typealias CFSetApplierFunction = @convention(c) (UnsafeRawPointer?, UnsafeMutableRawPointer?) -> Void
class CFSet : _CFObject {
}
class CFMutableSet : CFSet, _CFObject {
}
func CFSetGetTypeID() -> CFTypeID
func CFSetCreate(_ allocator: CFAllocator!, _ values: UnsafeMutablePointer<UnsafeRawPointer?>!, _ numValues: CFIndex, _ callBacks: UnsafePointer<CFSetCallBacks>!) -> CFSet!
func CFSetCreateCopy(_ allocator: CFAllocator!, _ theSet: CFSet!) -> CFSet!
func CFSetCreateMutable(_ allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFSetCallBacks>!) -> CFMutableSet!
func CFSetCreateMutableCopy(_ allocator: CFAllocator!, _ capacity: CFIndex, _ theSet: CFSet!) -> CFMutableSet!
func CFSetGetCount(_ theSet: CFSet!) -> CFIndex
func CFSetGetCountOfValue(_ theSet: CFSet!, _ value: UnsafeRawPointer!) -> CFIndex
func CFSetContainsValue(_ theSet: CFSet!, _ value: UnsafeRawPointer!) -> Bool
func CFSetGetValue(_ theSet: CFSet!, _ value: UnsafeRawPointer!) -> UnsafeRawPointer!
func CFSetGetValueIfPresent(_ theSet: CFSet!, _ candidate: UnsafeRawPointer!, _ value: UnsafeMutablePointer<UnsafeRawPointer?>!) -> Bool
func CFSetGetValues(_ theSet: CFSet!, _ values: UnsafeMutablePointer<UnsafeRawPointer?>!)
func CFSetApplyFunction(_ theSet: CFSet!, _ applier: (@convention(c) (UnsafeRawPointer?, UnsafeMutableRawPointer?) -> Void)!, _ context: UnsafeMutableRawPointer!)
func CFSetAddValue(_ theSet: CFMutableSet!, _ value: UnsafeRawPointer!)
func CFSetReplaceValue(_ theSet: CFMutableSet!, _ value: UnsafeRawPointer!)
func CFSetSetValue(_ theSet: CFMutableSet!, _ value: UnsafeRawPointer!)
func CFSetRemoveValue(_ theSet: CFMutableSet!, _ value: UnsafeRawPointer!)
func CFSetRemoveAllValues(_ theSet: CFMutableSet!)
