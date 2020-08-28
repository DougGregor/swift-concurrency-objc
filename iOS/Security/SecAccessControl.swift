
@available(iOS 8.0, *)
func SecAccessControlGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
struct SecAccessControlCreateFlags : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var userPresence: SecAccessControlCreateFlags { get }
  @available(iOS 11.3, *)
  static var biometryAny: SecAccessControlCreateFlags { get }
  @available(iOS, introduced: 9.0, deprecated: 11.3, renamed: "SecAccessControlCreateFlags.biometryAny")
  static var touchIDAny: SecAccessControlCreateFlags { get }
  @available(iOS 11.3, *)
  static var biometryCurrentSet: SecAccessControlCreateFlags { get }
  @available(iOS, introduced: 9.0, deprecated: 11.3, renamed: "SecAccessControlCreateFlags.biometryCurrentSet")
  static var touchIDCurrentSet: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var devicePasscode: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var or: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var and: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var privateKeyUsage: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var applicationPassword: SecAccessControlCreateFlags { get }
}
@available(iOS 8.0, *)
func SecAccessControlCreateWithFlags(_ allocator: CFAllocator?, _ protection: CFTypeRef, _ flags: SecAccessControlCreateFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecAccessControl?
