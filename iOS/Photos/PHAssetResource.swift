
@available(iOS 9, *)
class PHAssetResource : NSObject {
  @available(iOS 9, *)
  var type: PHAssetResourceType { get }
  @available(iOS 9, *)
  var assetLocalIdentifier: String { get }
  @available(iOS 9, *)
  var uniformTypeIdentifier: String { get }
  @available(iOS 9, *)
  var originalFilename: String { get }
  @available(iOS 9, *)
  class func assetResources(for asset: PHAsset) -> [PHAssetResource]
  @available(iOS 9.1, *)
  class func assetResources(for livePhoto: PHLivePhoto) -> [PHAssetResource]
}
