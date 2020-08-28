
@available(macOS 10.13, macOS 10.13, *)
enum PHImageRequestOptionsVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.13, *)
  case current
  @available(macOS 10.13, *)
  case unadjusted
  @available(macOS 10.13, *)
  case original
}
@available(macOS 10.13, macOS 10.13, *)
enum PHImageRequestOptionsDeliveryMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.13, *)
  case opportunistic
  @available(macOS 10.13, *)
  case highQualityFormat
  @available(macOS 10.13, *)
  case fastFormat
}
@available(macOS 10.13, macOS 10.13, *)
enum PHImageRequestOptionsResizeMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.13, *)
  case none
  @available(macOS 10.13, *)
  case fast
  @available(macOS 10.13, *)
  case exact
}
@available(macOS 10.13, *)
typealias PHAssetImageProgressHandler = (Double, Error?, UnsafeMutablePointer<ObjCBool>, [AnyHashable : Any]?) -> Void
@available(macOS 10.13, *)
class PHImageRequestOptions : NSObject, NSCopying {
  @available(macOS 10.13, *)
  var version: PHImageRequestOptionsVersion
  @available(macOS 10.13, *)
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  @available(macOS 10.13, *)
  var resizeMode: PHImageRequestOptionsResizeMode
  @available(macOS 10.13, *)
  var normalizedCropRect: CGRect
  @available(macOS 10.13, *)
  var isNetworkAccessAllowed: Bool
  @available(macOS 10.13, *)
  var isSynchronous: Bool
  @available(macOS 10.13, *)
  var progressHandler: PHAssetImageProgressHandler?
}
@available(macOS 10.15, *)
class PHLivePhotoRequestOptions : NSObject, NSCopying {
  @available(macOS 10.15, *)
  var version: PHImageRequestOptionsVersion
  @available(macOS 10.15, *)
  var deliveryMode: PHImageRequestOptionsDeliveryMode
  @available(macOS 10.15, *)
  var isNetworkAccessAllowed: Bool
  @available(macOS 10.15, *)
  var progressHandler: PHAssetImageProgressHandler?
}
@available(macOS 10.15, macOS 10.15, *)
enum PHVideoRequestOptionsVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.15, *)
  case current
  @available(macOS 10.15, *)
  case original
}
@available(macOS 10.15, macOS 10.15, *)
enum PHVideoRequestOptionsDeliveryMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.15, *)
  case automatic
  @available(macOS 10.15, *)
  case highQualityFormat
  @available(macOS 10.15, *)
  case mediumQualityFormat
  @available(macOS 10.15, *)
  case fastFormat
}
@available(macOS 10.15, *)
typealias PHAssetVideoProgressHandler = (Double, Error?, UnsafeMutablePointer<ObjCBool>, [AnyHashable : Any]?) -> Void
@available(macOS 10.15, *)
class PHVideoRequestOptions : NSObject {
  @available(macOS 10.15, *)
  var isNetworkAccessAllowed: Bool
  @available(macOS 10.15, *)
  var version: PHVideoRequestOptionsVersion
  @available(macOS 10.15, *)
  var deliveryMode: PHVideoRequestOptionsDeliveryMode
  @available(macOS 10.15, *)
  var progressHandler: PHAssetVideoProgressHandler?
}
@available(macOS 10.13, *)
typealias PHImageRequestID = Int32
@available(macOS 10.13, *)
let PHInvalidImageRequestID: PHImageRequestID
@available(macOS 10.13, *)
let PHImageManagerMaximumSize: CGSize
@available(macOS 10.13, *)
let PHImageResultIsInCloudKey: String
@available(macOS 10.13, *)
let PHImageResultIsDegradedKey: String
@available(macOS 10.13, *)
let PHImageResultRequestIDKey: String
@available(macOS 10.13, *)
let PHImageCancelledKey: String
@available(macOS 10.13, *)
let PHImageErrorKey: String
@available(macOS 10.13, *)
class PHImageManager : NSObject {
  @available(macOS 10.13, *)
  class func `default`() -> PHImageManager
  @available(macOS 10.15, *)
  func requestImageDataAndOrientation(for asset: PHAsset, options: PHImageRequestOptions?, resultHandler: @escaping (Data?, String?, CGImagePropertyOrientation, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
  @available(macOS 10.13, *)
  func cancelImageRequest(_ requestID: PHImageRequestID)
  @available(macOS 10.15, *)
  func requestLivePhoto(for asset: PHAsset, targetSize: CGSize, contentMode: PHImageContentMode, options: PHLivePhotoRequestOptions?, resultHandler: @escaping (PHLivePhoto?, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
  @available(macOS 10.15, *)
  func requestPlayerItem(forVideo asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: @escaping (AVPlayerItem?, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
  @available(macOS 10.15, *)
  func requestExportSession(forVideo asset: PHAsset, options: PHVideoRequestOptions?, exportPreset: String, resultHandler: @escaping (AVAssetExportSession?, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
  @available(macOS 10.15, *)
  func requestAVAsset(forVideo asset: PHAsset, options: PHVideoRequestOptions?, resultHandler: @escaping (AVAsset?, AVAudioMix?, [AnyHashable : Any]?) -> Void) -> PHImageRequestID
}
@available(macOS 10.15, *)
class PHCachingImageManager : PHImageManager {
  @available(macOS 10.15, *)
  var allowsCachingHighQualityImages: Bool
  @available(macOS 10.15, *)
  func startCachingImages(for assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?)
  @available(macOS 10.15, *)
  func stopCachingImages(for assets: [PHAsset], targetSize: CGSize, contentMode: PHImageContentMode, options: PHImageRequestOptions?)
  @available(macOS 10.15, *)
  func stopCachingImagesForAllAssets()
}
