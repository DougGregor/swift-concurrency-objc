
@available(watchOS 2.0, *)
let CNErrorDomain: String
@available(watchOS 2.0, *)
struct CNError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var communicationError: CNError.Code { get }
  static var dataAccessError: CNError.Code { get }
  static var authorizationDenied: CNError.Code { get }
  @available(watchOS 4.3, *)
  static var noAccessableWritableContainers: CNError.Code { get }
  @available(watchOS 6.0, *)
  static var unauthorizedKeys: CNError.Code { get }
  @available(watchOS 6.0, *)
  static var featureDisabledByUser: CNError.Code { get }
  static var recordDoesNotExist: CNError.Code { get }
  static var insertedRecordAlreadyExists: CNError.Code { get }
  static var containmentCycle: CNError.Code { get }
  static var containmentScope: CNError.Code { get }
  static var parentRecordDoesNotExist: CNError.Code { get }
  static var recordIdentifierInvalid: CNError.Code { get }
  @available(watchOS 6.0, *)
  static var recordNotWritable: CNError.Code { get }
  @available(watchOS 6.0, *)
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
  @available(watchOS 4.0, *)
  static var vCardMalformed: CNError.Code { get }
  @available(watchOS 5.0, *)
  static var vCardSummarizationError: CNError.Code { get }
}

@available(macOS 10.11, iOS 9.0, *)
extension CNError {
  var affectedRecords: [AnyObject]? { get }
  var affectedRecordIdentifiers: [String]? { get }
  var keyPaths: [String]? { get }
}
@available(watchOS 2.0, *)
let CNErrorUserInfoAffectedRecordsKey: String
@available(watchOS 2.0, *)
let CNErrorUserInfoAffectedRecordIdentifiersKey: String
@available(watchOS 2.0, *)
let CNErrorUserInfoValidationErrorsKey: String
@available(watchOS 2.0, *)
let CNErrorUserInfoKeyPathsKey: String
