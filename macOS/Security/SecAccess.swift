
typealias SecAccessOwnerType = UInt32
var kSecUseOnlyUID: Int { get }
var kSecUseOnlyGID: Int { get }
var kSecHonorRoot: Int { get }
var kSecMatchBits: Int { get }
@available(macOS 10.7, *)
let kSecACLAuthorizationAny: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationLogin: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationGenKey: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationDelete: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationExportWrapped: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationExportClear: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationImportWrapped: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationImportClear: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationSign: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationEncrypt: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationDecrypt: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationMAC: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationDerive: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationKeychainCreate: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationKeychainDelete: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationKeychainItemRead: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationKeychainItemInsert: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationKeychainItemModify: CFString
@available(macOS 10.7, *)
let kSecACLAuthorizationKeychainItemDelete: CFString
@available(macOS 10.13.4, *)
let kSecACLAuthorizationChangeACL: CFString
@available(macOS 10.13.4, *)
let kSecACLAuthorizationChangeOwner: CFString
@available(macOS 10.11, *)
let kSecACLAuthorizationPartitionID: CFString
@available(macOS 10.11, *)
let kSecACLAuthorizationIntegrity: CFString
func SecAccessGetTypeID() -> CFTypeID
func SecAccessCreate(_ descriptor: CFString, _ trustedlist: CFArray?, _ accessRef: UnsafeMutablePointer<SecAccess?>) -> OSStatus
@available(macOS 10.7, *)
func SecAccessCreateWithOwnerAndACL(_ userId: uid_t, _ groupId: gid_t, _ ownerType: SecAccessOwnerType, _ acls: CFArray?, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecAccess?
@available(macOS 10.7, *)
func SecAccessCopyOwnerAndACL(_ accessRef: SecAccess, _ userId: UnsafeMutablePointer<uid_t>?, _ groupId: UnsafeMutablePointer<gid_t>?, _ ownerType: UnsafeMutablePointer<SecAccessOwnerType>?, _ aclList: UnsafeMutablePointer<CFArray?>?) -> OSStatus
func SecAccessCopyACLList(_ accessRef: SecAccess, _ aclList: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(macOS 10.7, *)
func SecAccessCopyMatchingACLList(_ accessRef: SecAccess, _ authorizationTag: CFTypeRef) -> CFArray?
