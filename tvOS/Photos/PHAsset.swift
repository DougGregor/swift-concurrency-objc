
@available(tvOS 10, *)
class PHAsset : PHObject {
  @available(tvOS 11, *)
  var playbackStyle: PHAsset.PlaybackStyle { get }
  @available(tvOS 10, *)
  var mediaType: PHAssetMediaType { get }
  @available(tvOS 10, *)
  var mediaSubtypes: PHAssetMediaSubtype { get }
  @available(tvOS 10, *)
  var pixelWidth: Int { get }
  @available(tvOS 10, *)
  var pixelHeight: Int { get }
  @available(tvOS 10, *)
  var creationDate: Date? { get }
  @available(tvOS 10, *)
  var modificationDate: Date? { get }
  @available(tvOS 10, *)
  var location: CLLocation? { get }
  @available(tvOS 10, *)
  var duration: TimeInterval { get }
  @available(tvOS 10, *)
  var isHidden: Bool { get }
  @available(tvOS 10, *)
  var isFavorite: Bool { get }
  @available(tvOS 10, *)
  var burstIdentifier: String? { get }
  @available(tvOS 10, *)
  var burstSelectionTypes: PHAssetBurstSelectionType { get }
  @available(tvOS 10, *)
  var representsBurst: Bool { get }
  @available(tvOS 10, *)
  var sourceType: PHAssetSourceType { get }
  @available(tvOS 10, *)
  func canPerform(_ editOperation: PHAssetEditOperation) -> Bool
  @available(tvOS 10, *)
  class func fetchAssets(in assetCollection: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(tvOS 10, *)
  class func fetchAssets(withLocalIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(tvOS 10, *)
  class func fetchKeyAssets(in assetCollection: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult<PHAsset>?
  @available(tvOS 10, *)
  class func fetchAssets(withBurstIdentifier burstIdentifier: String, options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(tvOS 10, *)
  class func fetchAssets(with options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(tvOS 10, *)
  class func fetchAssets(with mediaType: PHAssetMediaType, options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(tvOS, introduced: 8, deprecated: 11, message: "Will be removed in a future release")
  class func fetchAssets(withALAssetURLs assetURLs: [URL], options: PHFetchOptions?) -> PHFetchResult<PHAsset>
}
