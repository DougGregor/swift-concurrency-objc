
typealias CFArrayRetainCallBack = @convention(c) (CFAllocator?, UnsafeRawPointer?) -> UnsafeRawPointer?
typealias CFArrayReleaseCallBack = @convention(c) (CFAllocator?, UnsafeRawPointer?) -> Void
typealias CFArrayCopyDescriptionCallBack = @convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?
typealias CFArrayEqualCallBack = @convention(c) (UnsafeRawPointer?, UnsafeRawPointer?) -> DarwinBoolean
struct CFArrayCallBacks {
  var version: CFIndex
  var retain: CFArrayRetainCallBack!
  var release: CFArrayReleaseCallBack!
  var copyDescription: CFArrayCopyDescriptionCallBack!
  var equal: CFArrayEqualCallBack!
  init()
  init(version: CFIndex, retain: CFArrayRetainCallBack!, release: CFArrayReleaseCallBack!, copyDescription: CFArrayCopyDescriptionCallBack!, equal: CFArrayEqualCallBack!)
}
let kCFTypeArrayCallBacks: CFArrayCallBacks
typealias CFArrayApplierFunction = @convention(c) (UnsafeRawPointer?, UnsafeMutableRawPointer?) -> Void
class CFArray : _CFObject {
}
class CFMutableArray : CFArray, _CFObject {
}
func CFArrayGetTypeID() -> CFTypeID
func CFArrayCreate(_ allocator: CFAllocator!, _ values: UnsafeMutablePointer<UnsafeRawPointer?>!, _ numValues: CFIndex, _ callBacks: UnsafePointer<CFArrayCallBacks>!) -> CFArray!
func CFArrayCreateCopy(_ allocator: CFAllocator!, _ theArray: CFArray!) -> CFArray!
func CFArrayCreateMutable(_ allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFArrayCallBacks>!) -> CFMutableArray!
func CFArrayCreateMutableCopy(_ allocator: CFAllocator!, _ capacity: CFIndex, _ theArray: CFArray!) -> CFMutableArray!
func CFArrayGetCount(_ theArray: CFArray!) -> CFIndex
func CFArrayGetCountOfValue(_ theArray: CFArray!, _ range: CFRange, _ value: UnsafeRawPointer!) -> CFIndex
func CFArrayContainsValue(_ theArray: CFArray!, _ range: CFRange, _ value: UnsafeRawPointer!) -> Bool
func CFArrayGetValueAtIndex(_ theArray: CFArray!, _ idx: CFIndex) -> UnsafeRawPointer!
func CFArrayGetValues(_ theArray: CFArray!, _ range: CFRange, _ values: UnsafeMutablePointer<UnsafeRawPointer?>!)
func CFArrayApplyFunction(_ theArray: CFArray!, _ range: CFRange, _ applier: (@convention(c) (UnsafeRawPointer?, UnsafeMutableRawPointer?) -> Void)!, _ context: UnsafeMutableRawPointer!)
func CFArrayGetFirstIndexOfValue(_ theArray: CFArray!, _ range: CFRange, _ value: UnsafeRawPointer!) -> CFIndex
func CFArrayGetLastIndexOfValue(_ theArray: CFArray!, _ range: CFRange, _ value: UnsafeRawPointer!) -> CFIndex
func CFArrayBSearchValues(_ theArray: CFArray!, _ range: CFRange, _ value: UnsafeRawPointer!, _ comparator: CFComparatorFunction!, _ context: UnsafeMutableRawPointer!) -> CFIndex
func CFArrayAppendValue(_ theArray: CFMutableArray!, _ value: UnsafeRawPointer!)
func CFArrayInsertValueAtIndex(_ theArray: CFMutableArray!, _ idx: CFIndex, _ value: UnsafeRawPointer!)
func CFArraySetValueAtIndex(_ theArray: CFMutableArray!, _ idx: CFIndex, _ value: UnsafeRawPointer!)
func CFArrayRemoveValueAtIndex(_ theArray: CFMutableArray!, _ idx: CFIndex)
func CFArrayRemoveAllValues(_ theArray: CFMutableArray!)
func CFArrayReplaceValues(_ theArray: CFMutableArray!, _ range: CFRange, _ newValues: UnsafeMutablePointer<UnsafeRawPointer?>!, _ newCount: CFIndex)
func CFArrayExchangeValuesAtIndices(_ theArray: CFMutableArray!, _ idx1: CFIndex, _ idx2: CFIndex)
func CFArraySortValues(_ theArray: CFMutableArray!, _ range: CFRange, _ comparator: CFComparatorFunction!, _ context: UnsafeMutableRawPointer!)
func CFArrayAppendArray(_ theArray: CFMutableArray!, _ otherArray: CFArray!, _ otherRange: CFRange)
