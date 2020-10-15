
typealias CFDictionaryRetainCallBack = @convention(c) (CFAllocator?, UnsafeRawPointer?) -> UnsafeRawPointer?
typealias CFDictionaryReleaseCallBack = @convention(c) (CFAllocator?, UnsafeRawPointer?) -> Void
typealias CFDictionaryCopyDescriptionCallBack = @convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?
typealias CFDictionaryEqualCallBack = @convention(c) (UnsafeRawPointer?, UnsafeRawPointer?) -> DarwinBoolean
typealias CFDictionaryHashCallBack = @convention(c) (UnsafeRawPointer?) -> CFHashCode
struct CFDictionaryKeyCallBacks {
  var version: CFIndex
  var retain: CFDictionaryRetainCallBack!
  var release: CFDictionaryReleaseCallBack!
  var copyDescription: CFDictionaryCopyDescriptionCallBack!
  var equal: CFDictionaryEqualCallBack!
  var hash: CFDictionaryHashCallBack!
  init()
  init(version: CFIndex, retain: CFDictionaryRetainCallBack!, release: CFDictionaryReleaseCallBack!, copyDescription: CFDictionaryCopyDescriptionCallBack!, equal: CFDictionaryEqualCallBack!, hash: CFDictionaryHashCallBack!)
}
let kCFTypeDictionaryKeyCallBacks: CFDictionaryKeyCallBacks
let kCFCopyStringDictionaryKeyCallBacks: CFDictionaryKeyCallBacks
struct CFDictionaryValueCallBacks {
  var version: CFIndex
  var retain: CFDictionaryRetainCallBack!
  var release: CFDictionaryReleaseCallBack!
  var copyDescription: CFDictionaryCopyDescriptionCallBack!
  var equal: CFDictionaryEqualCallBack!
  init()
  init(version: CFIndex, retain: CFDictionaryRetainCallBack!, release: CFDictionaryReleaseCallBack!, copyDescription: CFDictionaryCopyDescriptionCallBack!, equal: CFDictionaryEqualCallBack!)
}
let kCFTypeDictionaryValueCallBacks: CFDictionaryValueCallBacks
typealias CFDictionaryApplierFunction = @convention(c) (UnsafeRawPointer?, UnsafeRawPointer?, UnsafeMutableRawPointer?) -> Void
class CFDictionary : _CFObject {
}
class CFMutableDictionary : CFDictionary, _CFObject {
}
func CFDictionaryGetTypeID() -> CFTypeID
func CFDictionaryCreate(_ allocator: CFAllocator!, _ keys: UnsafeMutablePointer<UnsafeRawPointer?>!, _ values: UnsafeMutablePointer<UnsafeRawPointer?>!, _ numValues: CFIndex, _ keyCallBacks: UnsafePointer<CFDictionaryKeyCallBacks>!, _ valueCallBacks: UnsafePointer<CFDictionaryValueCallBacks>!) -> CFDictionary!
func CFDictionaryCreateCopy(_ allocator: CFAllocator!, _ theDict: CFDictionary!) -> CFDictionary!
func CFDictionaryCreateMutable(_ allocator: CFAllocator!, _ capacity: CFIndex, _ keyCallBacks: UnsafePointer<CFDictionaryKeyCallBacks>!, _ valueCallBacks: UnsafePointer<CFDictionaryValueCallBacks>!) -> CFMutableDictionary!
func CFDictionaryCreateMutableCopy(_ allocator: CFAllocator!, _ capacity: CFIndex, _ theDict: CFDictionary!) -> CFMutableDictionary!
func CFDictionaryGetCount(_ theDict: CFDictionary!) -> CFIndex
func CFDictionaryGetCountOfKey(_ theDict: CFDictionary!, _ key: UnsafeRawPointer!) -> CFIndex
func CFDictionaryGetCountOfValue(_ theDict: CFDictionary!, _ value: UnsafeRawPointer!) -> CFIndex
func CFDictionaryContainsKey(_ theDict: CFDictionary!, _ key: UnsafeRawPointer!) -> Bool
func CFDictionaryContainsValue(_ theDict: CFDictionary!, _ value: UnsafeRawPointer!) -> Bool
func CFDictionaryGetValue(_ theDict: CFDictionary!, _ key: UnsafeRawPointer!) -> UnsafeRawPointer!
func CFDictionaryGetValueIfPresent(_ theDict: CFDictionary!, _ key: UnsafeRawPointer!, _ value: UnsafeMutablePointer<UnsafeRawPointer?>!) -> Bool
func CFDictionaryGetKeysAndValues(_ theDict: CFDictionary!, _ keys: UnsafeMutablePointer<UnsafeRawPointer?>!, _ values: UnsafeMutablePointer<UnsafeRawPointer?>!)
func CFDictionaryApplyFunction(_ theDict: CFDictionary!, _ applier: (@convention(c) (UnsafeRawPointer?, UnsafeRawPointer?, UnsafeMutableRawPointer?) -> Void)!, _ context: UnsafeMutableRawPointer!)
func CFDictionaryAddValue(_ theDict: CFMutableDictionary!, _ key: UnsafeRawPointer!, _ value: UnsafeRawPointer!)
func CFDictionarySetValue(_ theDict: CFMutableDictionary!, _ key: UnsafeRawPointer!, _ value: UnsafeRawPointer!)
func CFDictionaryReplaceValue(_ theDict: CFMutableDictionary!, _ key: UnsafeRawPointer!, _ value: UnsafeRawPointer!)
func CFDictionaryRemoveValue(_ theDict: CFMutableDictionary!, _ key: UnsafeRawPointer!)
func CFDictionaryRemoveAllValues(_ theDict: CFMutableDictionary!)
