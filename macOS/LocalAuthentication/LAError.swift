
@available(macOS 10.10, *)
struct LAError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var authenticationFailed: LAError.Code { get }
  static var userCancel: LAError.Code { get }
  static var userFallback: LAError.Code { get }
  static var systemCancel: LAError.Code { get }
  static var passcodeNotSet: LAError.Code { get }
  @available(macOS, introduced: 10.10, deprecated: 10.13, message: "use LAErrorBiometryNotAvailable")
  static var touchIDNotAvailable: LAError.Code { get }
  @available(macOS, introduced: 10.10, deprecated: 10.13, message: "use LAErrorBiometryNotEnrolled")
  static var touchIDNotEnrolled: LAError.Code { get }
  @available(macOS, introduced: 10.11, deprecated: 10.13, message: "use LAErrorBiometryLockout")
  static var touchIDLockout: LAError.Code { get }
  @available(macOS 10.11, *)
  static var appCancel: LAError.Code { get }
  @available(macOS 10.11, *)
  static var invalidContext: LAError.Code { get }
  @available(macOS 10.13, *)
  static var biometryNotAvailable: LAError.Code { get }
  @available(macOS 10.13, *)
  static var biometryNotEnrolled: LAError.Code { get }
  @available(macOS 10.13, *)
  static var biometryLockout: LAError.Code { get }
  @available(macOS 10.10, *)
  static var notInteractive: LAError.Code { get }
  @available(macOS 10.15, *)
  static var watchNotAvailable: LAError.Code { get }
}
@available(macOS 10.11, *)
let LAErrorDomain: String
