
@available(iOS 8, iOS 8, *)
enum PHImageRequestOptionsVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case current
  @available(iOS 8, *)
  case unadjusted
  @available(iOS 8, *)
  case original
}
@available(iOS 8, iOS 8, *)
enum PHImageRequestOptionsDeliveryMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case opportunistic
  @available(iOS 8, *)
  case highQualityFormat
  @available(iOS 8, *)
  case fastFormat
}
@available(iOS 8, iOS 8, *)
enum PHImageRequestOptionsResizeMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case none
  @available(iOS 8, *)
  case fast
  @available(iOS 8, *)
  case exact
}
@available(iOS 8, *)
typealias PHAssetImageProgressHandler = (Double, Error?, UnsafeMutablePointer<ObjCBool>, [AnyHashable : Any]?) -> Void
@available(iOS 8, *)
class PHImageRequestOptions : NSObject, NSCopying {
  @available(iOS 8, *)
  var version: PHImageRequestOptionsVersion
  @available(iOS 8, *)
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  @available(iOS 8, *)
  var resizeMode: PHImageRequestOptionsResizeMode
  @available(iOS 8, *)
  var normalizedCropRect: CGRect
  @available(iOS 8, *)
  var isNetworkAccessAllowed: Bool
  @available(iOS 8, *)
  var isSynchronous: Bool
  @available(iOS 8, *)
  var progressHandler: PHAssetImageProgressHandler?
}
@available(iOS 9.1, *)
class PHLivePhotoRequestOptions : NSObject, NSCopying {
  @available(iOS 9.1, *)
  var version: PHImageRequestOptionsVersion
  @available(iOS 9.1, *)
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  @available(iOS 9.1, *)
  var isNetworkAccessAllowed: Bool
  @available(iOS 9.1, *)
  var progressHandler: PHAssetImageProgressHandler?
}
@available(iOS 8, iOS 8, *)
enum PHVideoRequestOptionsVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case current
  @available(iOS 8, *)
  case original
}
@available(iOS 8, iOS 8, *)
enum PHVideoRequestOptionsDeliveryMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case automatic
  @available(iOS 8, *)
  case highQualityFormat
  @available(iOS 8, *)
  case mediumQualityFormat
  @available(iOS 8, *)
  case fastFormat
}
@available(iOS 8, *)
typealias PHAssetVideoProgressHandler = (Double, Error?, UnsafeMutablePointer<ObjCBool>, [AnyHashable : Any]?) -> Void
@available(iOS 8, *)
class PHVideoRequestOptions : NSObject {
  @available(iOS 8, *)
  var isNetworkAccessAllowed: Bool
  @available(iOS 8, *)
  var version: PHVideoRequestOptionsVersion
  @available(iOS 8, *)
  var deliveryMode: PHVideoRequestOptionsDeliveryMode
  @available(iOS 8, *)
  var progressHandler: PHAssetVideoProgressHandler?
}
@available(iOS 8, *)
typealias PHImageRequestID = Int32
@available(iOS 8, *)
let PHInvalidImageRequestID: PHImageRequestID
@available(iOS 8, *)
let PHImageManagerMaximumSize: CGSize
@available(iOS 8, *)
let PHImageResultIsInCloudKey: String
@available(iOS 8, *)
let PHImageResultIsDegradedKey: String
@available(iOS 8, *)
let PHImageResultRequestIDKey: String
@available(iOS 8, *)
let PHImageCancelledKey: String
@available(iOS 8, *)
let PHImageErrorKey: String
@available(iOS 8, *)
class PHImageManager : NSObject {
  @available(iOS 8, *)
  class func `default`() -> PHImageManager
  @available(iOS 13, *)
  func requestImageDataAndOrientation(for asset: PHAsset, options: PHImageRequestOptions?, resultHandler: @escaping (Data?, String?, CGImagePropertyOrientation, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
  @available(iOS 8, *)
  func cancelImageRequest(_ requestID: PHImageRequestID)
  @available(iOS 9.1, *)
  func requestLivePhoto(for asset: PHAsset, targetSize: CGSize, contentMode: PHImageContentMode, options: PHLivePhotoRequestOptions?, resultHandler: @escaping (PHLivePhoto?, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
  @available(iOS 8, *)
  func requestPlayerItem(forVideo asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: @escaping (AVPlayerItem?, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
  @available(iOS 8, *)
  func requestExportSession(forVideo asset: PHAsset, options: PHVideoRequestOptions?, exportPreset: String, resultHandler: @escaping (AVAssetExportSession?, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
  @available(iOS 8, *)
  func requestAVAsset(forVideo asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: @escaping (AVAsset?, AVAudioMix?, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
}
@available(iOS 8, *)
class PHCachingImageManager : PHImageManager {
  @available(iOS 8, *)
  var allowsCachingHighQualityImages: Bool
  @available(iOS 8, *)
  func startCachingImages(for assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?)
  @available(iOS 8, *)
  func stopCachingImages(for assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?)
  @available(iOS 8, *)
  func stopCachingImagesForAllAssets()
}
