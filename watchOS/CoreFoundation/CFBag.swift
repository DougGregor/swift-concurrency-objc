
typealias CFBagRetainCallBack = @convention(c) (CFAllocator?, UnsafeRawPointer?) -> UnsafeRawPointer?
typealias CFBagReleaseCallBack = @convention(c) (CFAllocator?, UnsafeRawPointer?) -> Void
typealias CFBagCopyDescriptionCallBack = @convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?
typealias CFBagEqualCallBack = @convention(c) (UnsafeRawPointer?, UnsafeRawPointer?) -> DarwinBoolean
typealias CFBagHashCallBack = @convention(c) (UnsafeRawPointer?) -> CFHashCode
struct CFBagCallBacks {
  var version: CFIndex
  var retain: CFBagRetainCallBack!
  var release: CFBagReleaseCallBack!
  var copyDescription: CFBagCopyDescriptionCallBack!
  var equal: CFBagEqualCallBack!
  var hash: CFBagHashCallBack!
  init()
  init(version: CFIndex, retain: CFBagRetainCallBack!, release: CFBagReleaseCallBack!, copyDescription: CFBagCopyDescriptionCallBack!, equal: CFBagEqualCallBack!, hash: CFBagHashCallBack!)
}
let kCFTypeBagCallBacks: CFBagCallBacks
let kCFCopyStringBagCallBacks: CFBagCallBacks
typealias CFBagApplierFunction = @convention(c) (UnsafeRawPointer?, UnsafeMutableRawPointer?) -> Void
class CFBag : _CFObject {
}
class CFMutableBag : CFBag, _CFObject {
}
func CFBagGetTypeID() -> CFTypeID
func CFBagCreate(_ allocator: CFAllocator!, _ values: UnsafeMutablePointer<UnsafeRawPointer?>!, _ numValues: CFIndex, _ callBacks: UnsafePointer<CFBagCallBacks>!) -> CFBag!
func CFBagCreateCopy(_ allocator: CFAllocator!, _ theBag: CFBag!) -> CFBag!
func CFBagCreateMutable(_ allocator: CFAllocator!, _ capacity: CFIndex, _ callBacks: UnsafePointer<CFBagCallBacks>!) -> CFMutableBag!
func CFBagCreateMutableCopy(_ allocator: CFAllocator!, _ capacity: CFIndex, _ theBag: CFBag!) -> CFMutableBag!
func CFBagGetCount(_ theBag: CFBag!) -> CFIndex
func CFBagGetCountOfValue(_ theBag: CFBag!, _ value: UnsafeRawPointer!) -> CFIndex
func CFBagContainsValue(_ theBag: CFBag!, _ value: UnsafeRawPointer!) -> Bool
func CFBagGetValue(_ theBag: CFBag!, _ value: UnsafeRawPointer!) -> UnsafeRawPointer!
func CFBagGetValueIfPresent(_ theBag: CFBag!, _ candidate: UnsafeRawPointer!, _ value: UnsafeMutablePointer<UnsafeRawPointer?>!) -> Bool
func CFBagGetValues(_ theBag: CFBag!, _ values: UnsafeMutablePointer<UnsafeRawPointer?>!)
func CFBagApplyFunction(_ theBag: CFBag!, _ applier: (@convention(c) (UnsafeRawPointer?, UnsafeMutableRawPointer?) -> Void)!, _ context: UnsafeMutableRawPointer!)
func CFBagAddValue(_ theBag: CFMutableBag!, _ value: UnsafeRawPointer!)
func CFBagReplaceValue(_ theBag: CFMutableBag!, _ value: UnsafeRawPointer!)
func CFBagSetValue(_ theBag: CFMutableBag!, _ value: UnsafeRawPointer!)
func CFBagRemoveValue(_ theBag: CFMutableBag!, _ value: UnsafeRawPointer!)
func CFBagRemoveAllValues(_ theBag: CFMutableBag!)
