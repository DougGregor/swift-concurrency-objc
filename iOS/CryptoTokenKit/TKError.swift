
@available(iOS 9.0, *)
let TKErrorDomain: String
@available(iOS 9.0, *)
struct TKError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var notImplemented: TKError.Code { get }
  static var communicationError: TKError.Code { get }
  static var corruptedData: TKError.Code { get }
  static var canceledByUser: TKError.Code { get }
  static var authenticationFailed: TKError.Code { get }
  static var objectNotFound: TKError.Code { get }
  static var tokenNotFound: TKError.Code { get }
  static var badParameter: TKError.Code { get }
  static var authenticationNeeded: TKError.Code { get }
  @available(iOS, introduced: 9.0, deprecated: 9.0, renamed: "TKError.authenticationFailed")
  static var TKErrorAuthenticationFailed: TKError.Code { get }
  @available(iOS, introduced: 9.0, deprecated: 9.0, renamed: "TKError.objectNotFound")
  static var TKErrorObjectNotFound: TKError.Code { get }
  @available(iOS, introduced: 9.0, deprecated: 9.0, renamed: "TKError.tokenNotFound")
  static var TKErrorTokenNotFound: TKError.Code { get }
}
