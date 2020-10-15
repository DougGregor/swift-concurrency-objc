
@available(iOS 9.0, *)
let AVKitErrorDomain: String
@available(iOS 9.0, *)
struct AVKitError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: AVKitError.Code { get }
  static var pictureInPictureStartFailed: AVKitError.Code { get }
}
