
@available(tvOS 10, tvOS 10, *)
enum PHImageRequestOptionsVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case current
  @available(tvOS 10, *)
  case unadjusted
  @available(tvOS 10, *)
  case original
}
@available(tvOS 10, tvOS 10, *)
enum PHImageRequestOptionsDeliveryMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case opportunistic
  @available(tvOS 10, *)
  case highQualityFormat
  @available(tvOS 10, *)
  case fastFormat
}
@available(tvOS 10, tvOS 10, *)
enum PHImageRequestOptionsResizeMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case none
  @available(tvOS 10, *)
  case fast
  @available(tvOS 10, *)
  case exact
}
@available(tvOS 10, *)
typealias PHAssetImageProgressHandler = (Double, Error?, UnsafeMutablePointer<ObjCBool>, [AnyHashable : Any]?) -> Void
@available(tvOS 10, *)
class PHImageRequestOptions : NSObject, NSCopying {
  @available(tvOS 10, *)
  var version: PHImageRequestOptionsVersion
  @available(tvOS 10, *)
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  @available(tvOS 10, *)
  var resizeMode: PHImageRequestOptionsResizeMode
  @available(tvOS 10, *)
  var normalizedCropRect: CGRect
  @available(tvOS 10, *)
  var isNetworkAccessAllowed: Bool
  @available(tvOS 10, *)
  var isSynchronous: Bool
  @available(tvOS 10, *)
  var progressHandler: PHAssetImageProgressHandler?
}
@available(tvOS 10, *)
class PHLivePhotoRequestOptions : NSObject, NSCopying {
  @available(tvOS 10, *)
  var version: PHImageRequestOptionsVersion
  @available(tvOS 10, *)
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  @available(tvOS 10, *)
  var isNetworkAccessAllowed: Bool
  @available(tvOS 10, *)
  var progressHandler: PHAssetImageProgressHandler?
}
@available(tvOS 10, tvOS 10, *)
enum PHVideoRequestOptionsVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case current
  @available(tvOS 10, *)
  case original
}
@available(tvOS 10, tvOS 10, *)
enum PHVideoRequestOptionsDeliveryMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case automatic
  @available(tvOS 10, *)
  case highQualityFormat
  @available(tvOS 10, *)
  case mediumQualityFormat
  @available(tvOS 10, *)
  case fastFormat
}
@available(tvOS 10, *)
typealias PHAssetVideoProgressHandler = (Double, Error?, UnsafeMutablePointer<ObjCBool>, [AnyHashable : Any]?) -> Void
@available(tvOS 10, *)
class PHVideoRequestOptions : NSObject {
  @available(tvOS 10, *)
  var isNetworkAccessAllowed: Bool
  @available(tvOS 10, *)
  var version: PHVideoRequestOptionsVersion
  @available(tvOS 10, *)
  var deliveryMode: PHVideoRequestOptionsDeliveryMode
  @available(tvOS 10, *)
  var progressHandler: PHAssetVideoProgressHandler?
}
@available(tvOS 10, *)
typealias PHImageRequestID = Int32
@available(tvOS 10, *)
let PHInvalidImageRequestID: PHImageRequestID
@available(tvOS 10, *)
let PHImageManagerMaximumSize: CGSize
@available(tvOS 10, *)
let PHImageResultIsInCloudKey: String
@available(tvOS 10, *)
let PHImageResultIsDegradedKey: String
@available(tvOS 10, *)
let PHImageResultRequestIDKey: String
@available(tvOS 10, *)
let PHImageCancelledKey: String
@available(tvOS 10, *)
let PHImageErrorKey: String
@available(tvOS 10, *)
class PHImageManager : NSObject {
  @available(tvOS 10, *)
  class func `default`() -> PHImageManager
  @available(tvOS 13, *)
  func requestImageDataAndOrientation(for asset: PHAsset, options: PHImageRequestOptions?, resultHandler: @escaping (Data?, String?, CGImagePropertyOrientation, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
  @available(tvOS 10, *)
  func cancelImageRequest(_ requestID: PHImageRequestID)
  @available(tvOS 10, *)
  func requestLivePhoto(for asset: PHAsset, targetSize: CGSize, contentMode: PHImageContentMode, options: PHLivePhotoRequestOptions?, resultHandler: @escaping (PHLivePhoto?, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
  @available(tvOS 10, *)
  func requestPlayerItem(forVideo asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: @escaping (AVPlayerItem?, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
  @available(tvOS 10, *)
  func requestExportSession(forVideo asset: PHAsset, options: PHVideoRequestOptions?, exportPreset: String, resultHandler: @escaping (AVAssetExportSession?, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
  @available(tvOS 10, *)
  func requestAVAsset(forVideo asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: @escaping (AVAsset?, AVAudioMix?, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
}
@available(tvOS 10, *)
class PHCachingImageManager : PHImageManager {
  @available(tvOS 10, *)
  var allowsCachingHighQualityImages: Bool
  @available(tvOS 10, *)
  func startCachingImages(for assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?)
  @available(tvOS 10, *)
  func stopCachingImages(for assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?)
  @available(tvOS 10, *)
  func stopCachingImagesForAllAssets()
}
