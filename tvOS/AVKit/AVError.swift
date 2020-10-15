
@available(tvOS 13.0, *)
let AVKitErrorDomain: String
@available(tvOS 13.0, *)
struct AVKitError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: AVKitError.Code { get }
  static var pictureInPictureStartFailed: AVKitError.Code { get }
  static var contentRatingUnknown: AVKitError.Code { get }
  static var contentDisallowedByPasscode: AVKitError.Code { get }
  static var contentDisallowedByProfile: AVKitError.Code { get }
}
