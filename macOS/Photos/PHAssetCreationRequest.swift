
@available(macOS 10.15, *)
class PHAssetResourceCreationOptions : NSObject, NSCopying {
  @available(macOS 10.15, *)
  var originalFilename: String?
  @available(macOS 10.15, *)
  var uniformTypeIdentifier: String?
  @available(macOS 10.15, *)
  var shouldMoveFile: Bool
}
@available(macOS 10.15, *)
class PHAssetCreationRequest : PHAssetChangeRequest {
  @available(macOS 10.15, *)
  class func forAsset() -> Self
  @available(macOS 10.15, *)
  class func supportsAssetResourceTypes(_ types: [NSNumber]) -> Bool
  @available(macOS 10.15, *)
  func addResource(with type: PHAssetResourceType, fileURL: URL, options: PHAssetResourceCreationOptions?)
  @available(macOS 10.15, *)
  func addResource(with type: PHAssetResourceType, data: Data, options: PHAssetResourceCreationOptions?)
}
