
@available(macOS 10.11, *)
let CNErrorDomain: String
@available(macOS 10.11, *)
struct CNError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var communicationError: CNError.Code { get }
  static var dataAccessError: CNError.Code { get }
  static var authorizationDenied: CNError.Code { get }
  @available(macOS 10.13.3, *)
  static var noAccessableWritableContainers: CNError.Code { get }
  @available(macOS 10.14, *)
  static var unauthorizedKeys: CNError.Code { get }
  @available(macOS 10.15, *)
  static var featureDisabledByUser: CNError.Code { get }
  static var recordDoesNotExist: CNError.Code { get }
  static var insertedRecordAlreadyExists: CNError.Code { get }
  static var containmentCycle: CNError.Code { get }
  static var containmentScope: CNError.Code { get }
  static var parentRecordDoesNotExist: CNError.Code { get }
  static var recordIdentifierInvalid: CNError.Code { get }
  @available(macOS 10.14, *)
  static var recordNotWritable: CNError.Code { get }
  @available(macOS 10.14, *)
  static var parentContainerNotWritable: CNError.Code { get }
  static var validationMultipleErrors: CNError.Code { get }
  static var validationTypeMismatch: CNError.Code { get }
  static var validationConfigurationError: CNError.Code { get }
  static var predicateInvalid: CNError.Code { get }
  static var policyViolation: CNError.Code { get }
  static var clientIdentifierInvalid: CNError.Code { get }
  static var clientIdentifierDoesNotExist: CNError.Code { get }
  static var clientIdentifierCollision: CNError.Code { get }
  static var changeHistoryExpired: CNError.Code { get }
  static var changeHistoryInvalidAnchor: CNError.Code { get }
  @available(macOS 10.13, *)
  static var vCardMalformed: CNError.Code { get }
  @available(macOS 10.14, *)
  static var vCardSummarizationError: CNError.Code { get }
}

@available(macOS 10.11, iOS 9.0, *)
extension CNError {
  var affectedRecords: [AnyObject]? { get }
  var affectedRecordIdentifiers: [String]? { get }
  var keyPaths: [String]? { get }
}
@available(macOS 10.11, *)
let CNErrorUserInfoAffectedRecordsKey: String
@available(macOS 10.11, *)
let CNErrorUserInfoAffectedRecordIdentifiersKey: String
@available(macOS 10.11, *)
let CNErrorUserInfoValidationErrorsKey: String
@available(macOS 10.11, *)
let CNErrorUserInfoKeyPathsKey: String
