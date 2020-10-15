
@available(iOS 10.0, *)
let VSErrorDomain: String
@available(iOS 10.0, *)
let VSErrorInfoKeySAMLResponse: String
@available(iOS 10.0, *)
let VSErrorInfoKeySAMLResponseStatus: String
@available(iOS 10.2, *)
let VSErrorInfoKeyAccountProviderResponse: String
@available(iOS 10.3, *)
let VSErrorInfoKeyUnsupportedProviderIdentifier: String
@available(iOS 10.0, *)
struct VSError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var accessNotGranted: VSError.Code { get }
  static var unsupportedProvider: VSError.Code { get }
  static var userCancelled: VSError.Code { get }
  static var serviceTemporarilyUnavailable: VSError.Code { get }
  static var providerRejected: VSError.Code { get }
  static var invalidVerificationToken: VSError.Code { get }
  static var rejected: VSError.Code { get }
  static var unsupported: VSError.Code { get }
}
