
@available(iOS 8.0, *)
struct LAError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var authenticationFailed: LAError.Code { get }
  static var userCancel: LAError.Code { get }
  static var userFallback: LAError.Code { get }
  static var systemCancel: LAError.Code { get }
  static var passcodeNotSet: LAError.Code { get }
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "use LAErrorBiometryNotAvailable")
  static var touchIDNotAvailable: LAError.Code { get }
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "use LAErrorBiometryNotEnrolled")
  static var touchIDNotEnrolled: LAError.Code { get }
  @available(iOS, introduced: 9.0, deprecated: 11.0, message: "use LAErrorBiometryLockout")
  static var touchIDLockout: LAError.Code { get }
  @available(iOS 9.0, *)
  static var appCancel: LAError.Code { get }
  @available(iOS 9.0, *)
  static var invalidContext: LAError.Code { get }
  @available(iOS 11.0, *)
  static var biometryNotAvailable: LAError.Code { get }
  @available(iOS 11.0, *)
  static var biometryNotEnrolled: LAError.Code { get }
  @available(iOS 11.0, *)
  static var biometryLockout: LAError.Code { get }
  @available(iOS 8.0, *)
  static var notInteractive: LAError.Code { get }
}
@available(iOS 8.3, *)
let LAErrorDomain: String
