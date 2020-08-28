
@available(macOS 10.13, *)
class PHAsset : PHObject {
  @available(macOS 10.15, *)
  var playbackStyle: PHAsset.PlaybackStyle { get }
  @available(macOS 10.13, *)
  var mediaType: PHAssetMediaType { get }
  @available(macOS 10.13, *)
  var mediaSubtypes: PHAssetMediaSubtype { get }
  @available(macOS 10.13, *)
  var pixelWidth: Int { get }
  @available(macOS 10.13, *)
  var pixelHeight: Int { get }
  @available(macOS 10.13, *)
  var creationDate: Date? { get }
  @available(macOS 10.13, *)
  var modificationDate: Date? { get }
  @available(macOS 10.13, *)
  var location: CLLocation? { get }
  @available(macOS 10.13, *)
  var duration: TimeInterval { get }
  @available(macOS 10.13, *)
  var isHidden: Bool { get }
  @available(macOS 10.13, *)
  var isFavorite: Bool { get }
  @available(macOS, introduced: 10.14, deprecated: 10.15, message: "No longer supported")
  var isSyncFailureHidden: Bool { get }
  @available(macOS 10.15, *)
  var burstIdentifier: String? { get }
  @available(macOS 10.15, *)
  var burstSelectionTypes: PHAssetBurstSelectionType { get }
  @available(macOS 10.15, *)
  var representsBurst: Bool { get }
  @available(macOS 10.13, *)
  var sourceType: PHAssetSourceType { get }
  @available(macOS 10.15, *)
  func canPerform(_ editOperation: PHAssetEditOperation) -> Bool
  @available(macOS 10.13, *)
  class func fetchAssets(in assetCollection: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(macOS 10.13, *)
  class func fetchAssets(withLocalIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(macOS 10.13, *)
  class func fetchKeyAssets(in assetCollection: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult<PHAsset>?
  @available(macOS 10.15, *)
  class func fetchAssets(withBurstIdentifier burstIdentifier: String, options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(macOS 10.15, *)
  class func fetchAssets(with options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(macOS 10.15, *)
  class func fetchAssets(with mediaType: PHAssetMediaType, options: PHFetchOptions?) -> PHFetchResult<PHAsset>
}
