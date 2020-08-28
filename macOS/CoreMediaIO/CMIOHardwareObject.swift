
typealias CMIOObjectPropertySelector = UInt32
typealias CMIOObjectPropertyScope = UInt32
typealias CMIOObjectPropertyElement = UInt32
@available(macOS 10.7, *)
struct CMIOObjectPropertyAddress {
  var mSelector: CMIOObjectPropertySelector
  var mScope: CMIOObjectPropertyScope
  var mElement: CMIOObjectPropertyElement
  init()
  init(mSelector: CMIOObjectPropertySelector, mScope: CMIOObjectPropertyScope, mElement: CMIOObjectPropertyElement)
}
var kCMIOObjectPropertySelectorWildcard: UInt32 { get }
var kCMIOObjectPropertyScopeWildcard: UInt32 { get }
var kCMIOObjectPropertyElementWildcard: UInt32 { get }
typealias CMIOClassID = UInt32
typealias CMIOObjectID = UInt32
typealias CMIOObjectPropertyListenerProc = @convention(c) (CMIOObjectID, UInt32, UnsafePointer<CMIOObjectPropertyAddress>?, UnsafeMutableRawPointer?) -> OSStatus
typealias CMIOObjectPropertyListenerBlock = (UInt32, UnsafePointer<CMIOObjectPropertyAddress>?) -> Void
var kCMIOObjectPropertyScopeGlobal: Int { get }
var kCMIOObjectPropertyElementMaster: Int { get }
var kCMIOObjectClassID: Int { get }
var kCMIOObjectClassIDWildcard: Int { get }
var kCMIOObjectUnknown: Int { get }
var kCMIOObjectPropertyClass: Int { get }
var kCMIOObjectPropertyOwner: Int { get }
var kCMIOObjectPropertyCreator: Int { get }
var kCMIOObjectPropertyName: Int { get }
var kCMIOObjectPropertyManufacturer: Int { get }
var kCMIOObjectPropertyElementName: Int { get }
var kCMIOObjectPropertyElementCategoryName: Int { get }
var kCMIOObjectPropertyElementNumberName: Int { get }
var kCMIOObjectPropertyOwnedObjects: Int { get }
var kCMIOObjectPropertyListenerAdded: Int { get }
var kCMIOObjectPropertyListenerRemoved: Int { get }
@available(macOS 10.7, *)
func CMIOObjectShow(_ objectID: CMIOObjectID)
@available(macOS 10.7, *)
func CMIOObjectHasProperty(_ objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>!) -> Bool
@available(macOS 10.7, *)
func CMIOObjectIsPropertySettable(_ objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>!, _ isSettable: UnsafeMutablePointer<DarwinBoolean>!) -> OSStatus
@available(macOS 10.7, *)
func CMIOObjectGetPropertyDataSize(_ objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>!, _ qualifierDataSize: UInt32, _ qualifierData: UnsafeRawPointer!, _ dataSize: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS 10.7, *)
func CMIOObjectGetPropertyData(_ objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>!, _ qualifierDataSize: UInt32, _ qualifierData: UnsafeRawPointer!, _ dataSize: UInt32, _ dataUsed: UnsafeMutablePointer<UInt32>!, _ data: UnsafeMutableRawPointer!) -> OSStatus
@available(macOS 10.7, *)
func CMIOObjectSetPropertyData(_ objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>!, _ qualifierDataSize: UInt32, _ qualifierData: UnsafeRawPointer!, _ dataSize: UInt32, _ data: UnsafeRawPointer!) -> OSStatus
@available(macOS 10.7, *)
func CMIOObjectAddPropertyListener(_ objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>!, _ listener: CMIOObjectPropertyListenerProc!, _ clientData: UnsafeMutableRawPointer!) -> OSStatus
@available(macOS 10.7, *)
func CMIOObjectRemovePropertyListener(_ objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>!, _ listener: CMIOObjectPropertyListenerProc!, _ clientData: UnsafeMutableRawPointer!) -> OSStatus
@available(macOS 10.8, *)
func CMIOObjectAddPropertyListenerBlock(_ objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>!, _ dispatchQueue: DispatchQueue!, _ listener: CMIOObjectPropertyListenerBlock!) -> OSStatus
@available(macOS 10.8, *)
func CMIOObjectRemovePropertyListenerBlock(_ objectID: CMIOObjectID, _ address: UnsafePointer<CMIOObjectPropertyAddress>!, _ dispatchQueue: DispatchQueue!, _ listener: CMIOObjectPropertyListenerBlock!) -> OSStatus
