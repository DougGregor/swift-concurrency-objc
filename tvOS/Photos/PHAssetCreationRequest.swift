
@available(tvOS 10, *)
class PHAssetResourceCreationOptions : NSObject, NSCopying {
  @available(tvOS 10, *)
  var originalFilename: String?
  @available(tvOS 10, *)
  var uniformTypeIdentifier: String?
  @available(tvOS 10, *)
  var shouldMoveFile: Bool
}
@available(tvOS 10, *)
class PHAssetCreationRequest : PHAssetChangeRequest {
  @available(tvOS 10, *)
  class func forAsset() -> Self
  @available(tvOS 10, *)
  class func supportsAssetResourceTypes(_ types: [NSNumber]) -> Bool
  @available(tvOS 10, *)
  func addResource(with type: PHAssetResourceType, fileURL: URL, options: PHAssetResourceCreationOptions?)
  @available(tvOS 10, *)
  func addResource(with type: PHAssetResourceType, data: Data, options: PHAssetResourceCreationOptions?)
}
