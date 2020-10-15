
@available(iOS 13.0, *)
let ASAuthorizationErrorDomain: String
@available(iOS 13.0, *)
struct ASAuthorizationError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: ASAuthorizationError.Code { get }
  static var canceled: ASAuthorizationError.Code { get }
  static var invalidResponse: ASAuthorizationError.Code { get }
  static var notHandled: ASAuthorizationError.Code { get }
  static var failed: ASAuthorizationError.Code { get }
}
