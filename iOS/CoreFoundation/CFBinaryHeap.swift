
struct CFBinaryHeapCompareContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer!
  var retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!
  var release: (@convention(c) (UnsafeRawPointer?) -> Void)!
  var copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer!, retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!, release: (@convention(c) (UnsafeRawPointer?) -> Void)!, copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!)
}
struct CFBinaryHeapCallBacks {
  var version: CFIndex
  var retain: (@convention(c) (CFAllocator?, UnsafeRawPointer?) -> UnsafeRawPointer?)!
  var release: (@convention(c) (CFAllocator?, UnsafeRawPointer?) -> Void)!
  var copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!
  var compare: (@convention(c) (UnsafeRawPointer?, UnsafeRawPointer?, UnsafeMutableRawPointer?) -> CFComparisonResult)!
  init()
  init(version: CFIndex, retain: (@convention(c) (CFAllocator?, UnsafeRawPointer?) -> UnsafeRawPointer?)!, release: (@convention(c) (CFAllocator?, UnsafeRawPointer?) -> Void)!, copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!, compare: (@convention(c) (UnsafeRawPointer?, UnsafeRawPointer?, UnsafeMutableRawPointer?) -> CFComparisonResult)!)
}
let kCFStringBinaryHeapCallBacks: CFBinaryHeapCallBacks
typealias CFBinaryHeapApplierFunction = @convention(c) (UnsafeRawPointer?, UnsafeMutableRawPointer?) -> Void
class CFBinaryHeap : _CFObject {
}
func CFBinaryHeapGetTypeID() -> CFTypeID
func CFBinaryHeapCreate(_ allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFBinaryHeapCallBacks>!, _ compareContext: UnsafePointer<CFBinaryHeapCompareContext>!) -> CFBinaryHeap!
func CFBinaryHeapCreateCopy(_ allocator: CFAllocator!, _ capacity: CFIndex, _ heap: CFBinaryHeap!) -> CFBinaryHeap!
func CFBinaryHeapGetCount(_ heap: CFBinaryHeap!) -> CFIndex
func CFBinaryHeapGetCountOfValue(_ heap: CFBinaryHeap!, _ value: UnsafeRawPointer!) -> CFIndex
func CFBinaryHeapContainsValue(_ heap: CFBinaryHeap!, _ value: UnsafeRawPointer!) -> Bool
func CFBinaryHeapGetMinimum(_ heap: CFBinaryHeap!) -> UnsafeRawPointer!
func CFBinaryHeapGetMinimumIfPresent(_ heap: CFBinaryHeap!, _ value: UnsafeMutablePointer<UnsafeRawPointer?>!) -> Bool
func CFBinaryHeapGetValues(_ heap: CFBinaryHeap!, _ values: UnsafeMutablePointer<UnsafeRawPointer?>!)
func CFBinaryHeapApplyFunction(_ heap: CFBinaryHeap!, _ applier: (@convention(c) (UnsafeRawPointer?, UnsafeMutableRawPointer?) -> Void)!, _ context: UnsafeMutableRawPointer!)
func CFBinaryHeapAddValue(_ heap: CFBinaryHeap!, _ value: UnsafeRawPointer!)
func CFBinaryHeapRemoveMinimumValue(_ heap: CFBinaryHeap!)
func CFBinaryHeapRemoveAllValues(_ heap: CFBinaryHeap!)
