
@available(tvOS 10, *)
class PHAssetResource : NSObject {
  @available(tvOS 10, *)
  var type: PHAssetResourceType { get }
  @available(tvOS 10, *)
  var assetLocalIdentifier: String { get }
  @available(tvOS 10, *)
  var uniformTypeIdentifier: String { get }
  @available(tvOS 10, *)
  var originalFilename: String { get }
  @available(tvOS 10, *)
  class func assetResources(for asset: PHAsset) -> [PHAssetResource]
  @available(tvOS 10, *)
  class func assetResources(for livePhoto: PHLivePhoto) -> [PHAssetResource]
}
