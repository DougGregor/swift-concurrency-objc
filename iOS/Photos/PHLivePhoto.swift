
@available(iOS 9.1, *)
typealias PHLivePhotoRequestID = Int32
@available(iOS 9.1, *)
let PHLivePhotoRequestIDInvalid: PHLivePhotoRequestID
@available(iOS 9.1, *)
let PHLivePhotoInfoErrorKey: String
@available(iOS 9.1, *)
let PHLivePhotoInfoIsDegradedKey: String
@available(iOS 9.1, *)
let PHLivePhotoInfoCancelledKey: String
@available(iOS 9.1, *)
class PHLivePhoto : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 9.1, *)
  var size: CGSize { get }
  @available(iOS 9.1, *)
  class func cancelRequest(withRequestID requestID: PHLivePhotoRequestID)
}
@available(iOS 14, *)
extension PHLivePhoto : NSItemProviderReading {
}
