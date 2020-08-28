
@available(tvOS 10.0, *)
let VSErrorDomain: String
@available(tvOS 10.0, *)
let VSErrorInfoKeySAMLResponse: String
@available(tvOS 10.0, *)
let VSErrorInfoKeySAMLResponseStatus: String
@available(tvOS 10.1, *)
let VSErrorInfoKeyAccountProviderResponse: String
@available(tvOS 10.3, *)
let VSErrorInfoKeyUnsupportedProviderIdentifier: String
@available(tvOS 10.0, *)
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
