
@available(macOS 10.15, *)
typealias PHLivePhotoRequestID = Int32
@available(macOS 10.15, *)
let PHLivePhotoRequestIDInvalid: PHLivePhotoRequestID
@available(macOS 10.15, *)
let PHLivePhotoInfoErrorKey: String
@available(macOS 10.15, *)
let PHLivePhotoInfoIsDegradedKey: String
@available(macOS 10.15, *)
let PHLivePhotoInfoCancelledKey: String
@available(macOS 10.12, *)
class PHLivePhoto : NSObject, NSCopying, NSSecureCoding {
  @available(macOS 10.12, *)
  var size: CGSize { get }
  @available(macOS 10.15, *)
  class func cancelRequest(withRequestID requestID: PHLivePhotoRequestID)
}
