
@available(watchOS 2.0, *)
let WatchKitErrorDomain: String
@available(watchOS 2.0, *)
struct WatchKitError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: WatchKitError.Code { get }
  static var applicationDelegateWatchKitRequestReplyNotCalled: WatchKitError.Code { get }
  static var invalidArgument: WatchKitError.Code { get }
  static var mediaPlayerFailed: WatchKitError.Code { get }
  static var downloadFailed: WatchKitError.Code { get }
  static var recordingFailed: WatchKitError.Code { get }
}
