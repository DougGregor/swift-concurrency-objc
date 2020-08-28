
var __COREFOUNDATION_CFFILESECURITY__: Int32 { get }
class CFFileSecurity : _CFObject {
}
@available(macOS 10.7, *)
func CFFileSecurityGetTypeID() -> CFTypeID
@available(macOS 10.7, *)
func CFFileSecurityCreate(_ allocator: CFAllocator!) -> CFFileSecurity!
@available(macOS 10.7, *)
func CFFileSecurityCreateCopy(_ allocator: CFAllocator!, _ fileSec: CFFileSecurity!) -> CFFileSecurity!
@available(macOS 10.7, *)
func CFFileSecurityCopyOwnerUUID(_ fileSec: CFFileSecurity!, _ ownerUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>!) -> Bool
@available(macOS 10.7, *)
func CFFileSecuritySetOwnerUUID(_ fileSec: CFFileSecurity!, _ ownerUUID: CFUUID!) -> Bool
@available(macOS 10.7, *)
func CFFileSecurityCopyGroupUUID(_ fileSec: CFFileSecurity!, _ groupUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>!) -> Bool
@available(macOS 10.7, *)
func CFFileSecuritySetGroupUUID(_ fileSec: CFFileSecurity!, _ groupUUID: CFUUID!) -> Bool
@available(macOS 10.7, *)
func CFFileSecurityCopyAccessControlList(_ fileSec: CFFileSecurity!, _ accessControlList: UnsafeMutablePointer<acl_t?>!) -> Bool
@available(macOS 10.7, *)
func CFFileSecuritySetAccessControlList(_ fileSec: CFFileSecurity!, _ accessControlList: acl_t!) -> Bool
@available(macOS 10.7, *)
func CFFileSecurityGetOwner(_ fileSec: CFFileSecurity!, _ owner: UnsafeMutablePointer<uid_t>!) -> Bool
@available(macOS 10.7, *)
func CFFileSecuritySetOwner(_ fileSec: CFFileSecurity!, _ owner: uid_t) -> Bool
@available(macOS 10.7, *)
func CFFileSecurityGetGroup(_ fileSec: CFFileSecurity!, _ group: UnsafeMutablePointer<gid_t>!) -> Bool
@available(macOS 10.7, *)
func CFFileSecuritySetGroup(_ fileSec: CFFileSecurity!, _ group: gid_t) -> Bool
@available(macOS 10.7, *)
func CFFileSecurityGetMode(_ fileSec: CFFileSecurity!, _ mode: UnsafeMutablePointer<mode_t>!) -> Bool
@available(macOS 10.7, *)
func CFFileSecuritySetMode(_ fileSec: CFFileSecurity!, _ mode: mode_t) -> Bool
@available(macOS 10.8, *)
struct CFFileSecurityClearOptions : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var owner: CFFileSecurityClearOptions { get }
  static var group: CFFileSecurityClearOptions { get }
  static var mode: CFFileSecurityClearOptions { get }
  static var ownerUUID: CFFileSecurityClearOptions { get }
  static var groupUUID: CFFileSecurityClearOptions { get }
  static var accessControlList: CFFileSecurityClearOptions { get }
}
@available(macOS 10.8, *)
func CFFileSecurityClearProperties(_ fileSec: CFFileSecurity!, _ clearPropertyMask: CFFileSecurityClearOptions) -> Bool
