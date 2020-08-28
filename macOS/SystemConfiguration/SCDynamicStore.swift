
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
@available(macOS 10.1, *)
func SCDynamicStoreGetTypeID() -> CFTypeID
@available(macOS 10.1, *)
func SCDynamicStoreCreate(_ allocator: CFAllocator?, _ name: CFString, _ callout: SCDynamicStoreCallBack?, _ context: UnsafeMutablePointer<SCDynamicStoreContext>?) -> SCDynamicStore?
@available(macOS 10.4, *)
func SCDynamicStoreCreateWithOptions(_ allocator: CFAllocator?, _ name: CFString, _ storeOptions: CFDictionary?, _ callout: SCDynamicStoreCallBack?, _ context: UnsafeMutablePointer<SCDynamicStoreContext>?) -> SCDynamicStore?
@available(macOS 10.4, *)
let kSCDynamicStoreUseSessionKeys: CFString
@available(macOS 10.1, *)
func SCDynamicStoreCreateRunLoopSource(_ allocator: CFAllocator?, _ store: SCDynamicStore, _ order: CFIndex) -> CFRunLoopSource?
@available(macOS 10.6, *)
func SCDynamicStoreSetDispatchQueue(_ store: SCDynamicStore, _ queue: DispatchQueue?) -> Bool
@available(macOS 10.1, *)
func SCDynamicStoreCopyKeyList(_ store: SCDynamicStore?, _ pattern: CFString) -> CFArray?
@available(macOS 10.1, *)
func SCDynamicStoreAddValue(_ store: SCDynamicStore?, _ key: CFString, _ value: CFPropertyList) -> Bool
@available(macOS 10.1, *)
func SCDynamicStoreAddTemporaryValue(_ store: SCDynamicStore, _ key: CFString, _ value: CFPropertyList) -> Bool
@available(macOS 10.1, *)
func SCDynamicStoreCopyValue(_ store: SCDynamicStore?, _ key: CFString) -> CFPropertyList?
@available(macOS 10.1, *)
func SCDynamicStoreCopyMultiple(_ store: SCDynamicStore?, _ keys: CFArray?, _ patterns: CFArray?) -> CFDictionary?
@available(macOS 10.1, *)
func SCDynamicStoreSetValue(_ store: SCDynamicStore?, _ key: CFString, _ value: CFPropertyList) -> Bool
@available(macOS 10.1, *)
func SCDynamicStoreSetMultiple(_ store: SCDynamicStore?, _ keysToSet: CFDictionary?, _ keysToRemove: CFArray?, _ keysToNotify: CFArray?) -> Bool
@available(macOS 10.1, *)
func SCDynamicStoreRemoveValue(_ store: SCDynamicStore?, _ key: CFString) -> Bool
@available(macOS 10.1, *)
func SCDynamicStoreNotifyValue(_ store: SCDynamicStore?, _ key: CFString) -> Bool
@available(macOS 10.1, *)
func SCDynamicStoreSetNotificationKeys(_ store: SCDynamicStore, _ keys: CFArray?, _ patterns: CFArray?) -> Bool
@available(macOS 10.1, *)
func SCDynamicStoreCopyNotifiedKeys(_ store: SCDynamicStore) -> CFArray?
