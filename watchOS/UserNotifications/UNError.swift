
@available(watchOS 3.0, *)
let UNErrorDomain: String
@available(watchOS 3.0, *)
struct UNError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var notificationsNotAllowed: UNError.Code { get }
  static var attachmentInvalidURL: UNError.Code { get }
  static var attachmentUnrecognizedType: UNError.Code { get }
  static var attachmentInvalidFileSize: UNError.Code { get }
  static var attachmentNotInDataStore: UNError.Code { get }
  static var attachmentMoveIntoDataStoreFailed: UNError.Code { get }
  static var attachmentCorrupt: UNError.Code { get }
  static var notificationInvalidNoDate: UNError.Code { get }
  static var notificationInvalidNoContent: UNError.Code { get }
}
