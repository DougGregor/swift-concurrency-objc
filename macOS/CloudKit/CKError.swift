
@available(macOS 10.10, *)
let CKErrorDomain: String
@available(macOS 10.10, *)
let CKPartialErrorsByItemIDKey: String
@available(macOS 10.10, *)
let CKRecordChangedErrorAncestorRecordKey: String
@available(macOS 10.10, *)
let CKRecordChangedErrorServerRecordKey: String
@available(macOS 10.10, *)
let CKRecordChangedErrorClientRecordKey: String
@available(macOS 10.10, *)
let CKErrorRetryAfterKey: String
@available(macOS 10.10, *)
struct CKError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var internalError: CKError.Code { get }
  static var partialFailure: CKError.Code { get }
  static var networkUnavailable: CKError.Code { get }
  static var networkFailure: CKError.Code { get }
  static var badContainer: CKError.Code { get }
  static var serviceUnavailable: CKError.Code { get }
  static var requestRateLimited: CKError.Code { get }
  static var missingEntitlement: CKError.Code { get }
  static var notAuthenticated: CKError.Code { get }
  static var permissionFailure: CKError.Code { get }
  static var unknownItem: CKError.Code { get }
  static var invalidArguments: CKError.Code { get }
  @available(macOS, introduced: 10.10, deprecated: 10.12, message: "Will not be returned")
  static var resultsTruncated: CKError.Code { get }
  static var serverRecordChanged: CKError.Code { get }
  static var serverRejectedRequest: CKError.Code { get }
  static var assetFileNotFound: CKError.Code { get }
  static var assetFileModified: CKError.Code { get }
  static var incompatibleVersion: CKError.Code { get }
  static var constraintViolation: CKError.Code { get }
  static var operationCancelled: CKError.Code { get }
  static var changeTokenExpired: CKError.Code { get }
  static var batchRequestFailed: CKError.Code { get }
  static var zoneBusy: CKError.Code { get }
  static var badDatabase: CKError.Code { get }
  static var quotaExceeded: CKError.Code { get }
  static var zoneNotFound: CKError.Code { get }
  static var limitExceeded: CKError.Code { get }
  static var userDeletedZone: CKError.Code { get }
  @available(macOS 10.12, *)
  static var tooManyParticipants: CKError.Code { get }
  @available(macOS 10.12, *)
  static var alreadyShared: CKError.Code { get }
  @available(macOS 10.12, *)
  static var referenceViolation: CKError.Code { get }
  @available(macOS 10.12, *)
  static var managedAccountRestricted: CKError.Code { get }
  @available(macOS 10.12, *)
  static var participantMayNeedVerification: CKError.Code { get }
  @available(macOS 10.13, *)
  static var serverResponseLost: CKError.Code { get }
  @available(macOS 10.13, *)
  static var assetNotAvailable: CKError.Code { get }
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension CKError {
  var partialErrorsByItemID: [AnyHashable : Error]? { get }
  var ancestorRecord: CKRecord? { get }
  var serverRecord: CKRecord? { get }
  var clientRecord: CKRecord? { get }
  var retryAfterSeconds: Double? { get }
}
