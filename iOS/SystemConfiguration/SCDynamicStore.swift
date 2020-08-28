
class SCDynamicStore : _CFObject {
}
struct SCDynamicStoreContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer?
  var retain: (@convention(c) (UnsafeRawPointer) -> UnsafeRawPointer)?
  var release: (@convention(c) (UnsafeRawPointer) -> Void)?
  var copyDescription: (@convention(c) (UnsafeRawPointer) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer?, retain: (@convention(c) (UnsafeRawPointer) -> UnsafeRawPointer)?, release: (@convention(c) (UnsafeRawPointer) -> Void)?, copyDescription: (@convention(c) (UnsafeRawPointer) -> Unmanaged<CFString>)?)
}
typealias SCDynamicStoreCallBack = @convention(c) (SCDynamicStore, CFArray, UnsafeMutableRawPointer?) -> Void
func SCDynamicStoreGetTypeID() -> CFTypeID
func SCDynamicStoreCreate(_ allocator: CFAllocator?, _ name: CFString, _ callout: SCDynamicStoreCallBack?, _ context: UnsafeMutablePointer<SCDynamicStoreContext>?) -> SCDynamicStore?
func SCDynamicStoreCreateWithOptions(_ allocator: CFAllocator?, _ name: CFString, _ storeOptions: CFDictionary?, _ callout: SCDynamicStoreCallBack?, _ context: UnsafeMutablePointer<SCDynamicStoreContext>?) -> SCDynamicStore?
let kSCDynamicStoreUseSessionKeys: CFString
func SCDynamicStoreCreateRunLoopSource(_ allocator: CFAllocator?, _ store: SCDynamicStore, _ order: CFIndex) -> CFRunLoopSource?
func SCDynamicStoreSetDispatchQueue(_ store: SCDynamicStore, _ queue: DispatchQueue?) -> Bool
func SCDynamicStoreCopyKeyList(_ store: SCDynamicStore?, _ pattern: CFString) -> CFArray?
func SCDynamicStoreAddValue(_ store: SCDynamicStore?, _ key: CFString, _ value: CFPropertyList) -> Bool
func SCDynamicStoreAddTemporaryValue(_ store: SCDynamicStore, _ key: CFString, _ value: CFPropertyList) -> Bool
func SCDynamicStoreCopyValue(_ store: SCDynamicStore?, _ key: CFString) -> CFPropertyList?
func SCDynamicStoreCopyMultiple(_ store: SCDynamicStore?, _ keys: CFArray?, _ patterns: CFArray?) -> CFDictionary?
func SCDynamicStoreSetValue(_ store: SCDynamicStore?, _ key: CFString, _ value: CFPropertyList) -> Bool
func SCDynamicStoreSetMultiple(_ store: SCDynamicStore?, _ keysToSet: CFDictionary?, _ keysToRemove: CFArray?, _ keysToNotify: CFArray?) -> Bool
func SCDynamicStoreRemoveValue(_ store: SCDynamicStore?, _ key: CFString) -> Bool
func SCDynamicStoreNotifyValue(_ store: SCDynamicStore?, _ key: CFString) -> Bool
func SCDynamicStoreSetNotificationKeys(_ store: SCDynamicStore, _ keys: CFArray?, _ patterns: CFArray?) -> Bool
func SCDynamicStoreCopyNotifiedKeys(_ store: SCDynamicStore) -> CFArray?
