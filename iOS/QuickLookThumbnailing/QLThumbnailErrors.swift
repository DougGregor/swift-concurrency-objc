
@available(iOS 13.0, *)
let QLThumbnailErrorDomain: String
@available(iOS 13.0, *)
struct QLThumbnailError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var generationFailed: QLThumbnailError.Code { get }
  static var savingToURLFailed: QLThumbnailError.Code { get }
  static var noCachedThumbnail: QLThumbnailError.Code { get }
  static var noCloudThumbnail: QLThumbnailError.Code { get }
  static var requestInvalid: QLThumbnailError.Code { get }
  static var requestCancelled: QLThumbnailError.Code { get }
}
