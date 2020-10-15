
@available(macOS 10.10, *)
func SecAccessControlGetTypeID() -> CFTypeID
@available(macOS 10.10, *)
struct SecAccessControlCreateFlags : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var userPresence: SecAccessControlCreateFlags { get }
  @available(macOS 10.13.4, *)
  static var biometryAny: SecAccessControlCreateFlags { get }
  @available(macOS, introduced: 10.12.1, deprecated: 10.13.4, renamed: "SecAccessControlCreateFlags.biometryAny")
  static var touchIDAny: SecAccessControlCreateFlags { get }
  @available(macOS 10.13.4, *)
  static var biometryCurrentSet: SecAccessControlCreateFlags { get }
  @available(macOS, introduced: 10.12.1, deprecated: 10.13.4, renamed: "SecAccessControlCreateFlags.biometryCurrentSet")
  static var touchIDCurrentSet: SecAccessControlCreateFlags { get }
  @available(macOS 10.11, *)
  static var devicePasscode: SecAccessControlCreateFlags { get }
  @available(macOS 10.15, *)
  static var watch: SecAccessControlCreateFlags { get }
  @available(macOS 10.12.1, *)
  static var or: SecAccessControlCreateFlags { get }
  @available(macOS 10.12.1, *)
  static var and: SecAccessControlCreateFlags { get }
  @available(macOS 10.12.1, *)
  static var privateKeyUsage: SecAccessControlCreateFlags { get }
  @available(macOS 10.12.1, *)
  static var applicationPassword: SecAccessControlCreateFlags { get }
}
@available(macOS 10.10, *)
func SecAccessControlCreateWithFlags(_ allocator: CFAllocator?, _ protection: CFTypeRef, _ flags: SecAccessControlCreateFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> SecAccessControl?
