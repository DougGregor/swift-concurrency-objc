
@available(tvOS 10, *)
typealias PHLivePhotoRequestID = Int32
@available(tvOS 10, *)
let PHLivePhotoRequestIDInvalid: PHLivePhotoRequestID
@available(tvOS 10, *)
let PHLivePhotoInfoErrorKey: String
@available(tvOS 10, *)
let PHLivePhotoInfoIsDegradedKey: String
@available(tvOS 10, *)
let PHLivePhotoInfoCancelledKey: String
@available(tvOS 10, *)
class PHLivePhoto : NSObject, NSCopying, NSSecureCoding {
  @available(tvOS 10, *)
  var size: CGSize { get }
  @available(tvOS 10, *)
  class func cancelRequest(withRequestID requestID: PHLivePhotoRequestID)
}
