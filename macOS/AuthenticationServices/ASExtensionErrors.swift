
@available(macOS 11.0, *)
let ASExtensionErrorDomain: String
@available(macOS 11.0, *)
struct ASExtensionError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var failed: ASExtensionError.Code { get }
  static var userCanceled: ASExtensionError.Code { get }
  static var userInteractionRequired: ASExtensionError.Code { get }
  static var credentialIdentityNotFound: ASExtensionError.Code { get }
}
