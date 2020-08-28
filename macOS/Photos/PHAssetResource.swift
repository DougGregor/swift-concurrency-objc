
@available(macOS 10.15, *)
class PHAssetResource : NSObject {
  @available(macOS 10.15, *)
  var type: PHAssetResourceType { get }
  @available(macOS 10.15, *)
  var assetLocalIdentifier: String { get }
  @available(macOS 10.15, *)
  var uniformTypeIdentifier: String { get }
  @available(macOS 10.15, *)
  var originalFilename: String { get }
  @available(macOS 10.15, *)
  class func assetResources(for asset: PHAsset) -> [PHAssetResource]
  @available(macOS 10.15, *)
  class func assetResources(for livePhoto: PHLivePhoto) -> [PHAssetResource]
}
