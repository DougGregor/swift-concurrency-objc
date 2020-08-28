
let VSErrorDomain: String
let VSErrorInfoKeySAMLResponse: String
let VSErrorInfoKeySAMLResponseStatus: String
let VSErrorInfoKeyAccountProviderResponse: String
let VSErrorInfoKeyUnsupportedProviderIdentifier: String
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
