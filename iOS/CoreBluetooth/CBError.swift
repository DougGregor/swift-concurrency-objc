
let CBErrorDomain: String
struct CBError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: CBError.Code { get }
  @available(iOS 6.0, *)
  static var invalidParameters: CBError.Code { get }
  @available(iOS 6.0, *)
  static var invalidHandle: CBError.Code { get }
  @available(iOS 6.0, *)
  static var notConnected: CBError.Code { get }
  @available(iOS 6.0, *)
  static var outOfSpace: CBError.Code { get }
  @available(iOS 6.0, *)
  static var operationCancelled: CBError.Code { get }
  @available(iOS 6.0, *)
  static var connectionTimeout: CBError.Code { get }
  @available(iOS 6.0, *)
  static var peripheralDisconnected: CBError.Code { get }
  @available(iOS 6.0, *)
  static var uuidNotAllowed: CBError.Code { get }
  @available(iOS 6.0, *)
  static var alreadyAdvertising: CBError.Code { get }
  @available(iOS 7.1, *)
  static var connectionFailed: CBError.Code { get }
  @available(iOS 9.0, *)
  static var connectionLimitReached: CBError.Code { get }
  @available(iOS, introduced: 9.0, deprecated: 13.0, message: "Use CBErrorUnknownDevice instead")
  static var unkownDevice: CBError.Code { get }
  @available(iOS 12.0, *)
  static var unknownDevice: CBError.Code { get }
  @available(iOS 12.0, *)
  static var operationNotSupported: CBError.Code { get }
  @available(iOS 13.4, *)
  static var peerRemovedPairingInformation: CBError.Code { get }
  @available(iOS 13.3, *)
  static var encryptionTimedOut: CBError.Code { get }
  @available(iOS 14.0, *)
  static var tooManyLEPairedDevices: CBError.Code { get }
}
let CBATTErrorDomain: String
struct CBATTError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  @available(iOS 6.0, *)
  static var success: CBATTError.Code { get }
  static var invalidHandle: CBATTError.Code { get }
  static var readNotPermitted: CBATTError.Code { get }
  static var writeNotPermitted: CBATTError.Code { get }
  static var invalidPdu: CBATTError.Code { get }
  static var insufficientAuthentication: CBATTError.Code { get }
  static var requestNotSupported: CBATTError.Code { get }
  static var invalidOffset: CBATTError.Code { get }
  static var insufficientAuthorization: CBATTError.Code { get }
  static var prepareQueueFull: CBATTError.Code { get }
  static var attributeNotFound: CBATTError.Code { get }
  static var attributeNotLong: CBATTError.Code { get }
  static var insufficientEncryptionKeySize: CBATTError.Code { get }
  static var invalidAttributeValueLength: CBATTError.Code { get }
  static var unlikelyError: CBATTError.Code { get }
  static var insufficientEncryption: CBATTError.Code { get }
  static var unsupportedGroupType: CBATTError.Code { get }
  static var insufficientResources: CBATTError.Code { get }
}
