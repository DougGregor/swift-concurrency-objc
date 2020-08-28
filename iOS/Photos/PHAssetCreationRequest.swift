
@available(iOS 9, *)
class PHAssetResourceCreationOptions : NSObject, NSCopying {
  @available(iOS 9, *)
  var originalFilename: String?
  @available(iOS 9, *)
  var uniformTypeIdentifier: String?
  @available(iOS 9, *)
  var shouldMoveFile: Bool
}
@available(iOS 9, *)
class PHAssetCreationRequest : PHAssetChangeRequest {
  @available(iOS 9, *)
  class func forAsset() -> Self
  @available(iOS 9, *)
  class func supportsAssetResourceTypes(_ types: [NSNumber]) -> Bool
  @available(iOS 9, *)
  func addResource(with type: PHAssetResourceType, fileURL: URL, options: PHAssetResourceCreationOptions?)
  @available(iOS 9, *)
  func addResource(with type: PHAssetResourceType, data: Data, options: PHAssetResourceCreationOptions?)
}
