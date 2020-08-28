
@available(iOS 8, *)
class PHAsset : PHObject {
  @available(iOS 11, *)
  var playbackStyle: PHAsset.PlaybackStyle { get }
  @available(iOS 8, *)
  var mediaType: PHAssetMediaType { get }
  @available(iOS 8, *)
  var mediaSubtypes: PHAssetMediaSubtype { get }
  @available(iOS 8, *)
  var pixelWidth: Int { get }
  @available(iOS 8, *)
  var pixelHeight: Int { get }
  @available(iOS 8, *)
  var creationDate: Date? { get }
  @available(iOS 8, *)
  var modificationDate: Date? { get }
  @available(iOS 8, *)
  var location: CLLocation? { get }
  @available(iOS 8, *)
  var duration: TimeInterval { get }
  @available(iOS 8, *)
  var isHidden: Bool { get }
  @available(iOS 8, *)
  var isFavorite: Bool { get }
  @available(iOS 8, *)
  var burstIdentifier: String? { get }
  @available(iOS 8, *)
  var burstSelectionTypes: PHAssetBurstSelectionType { get }
  @available(iOS 8, *)
  var representsBurst: Bool { get }
  @available(iOS 9, *)
  var sourceType: PHAssetSourceType { get }
  @available(iOS 8, *)
  func canPerform(_ editOperation: PHAssetEditOperation) -> Bool
  @available(iOS 8, *)
  class func fetchAssets(in assetCollection: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(iOS 8, *)
  class func fetchAssets(withLocalIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(iOS 8, *)
  class func fetchKeyAssets(in assetCollection: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult<PHAsset>?
  @available(iOS 8, *)
  class func fetchAssets(withBurstIdentifier burstIdentifier: String, options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(iOS 8, *)
  class func fetchAssets(with options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(iOS 8, *)
  class func fetchAssets(with mediaType: PHAssetMediaType, options: PHFetchOptions?) -> PHFetchResult<PHAsset>
  @available(iOS, introduced: 8, deprecated: 11, message: "Will be removed in a future release")
  class func fetchAssets(withALAssetURLs assetURLs: [URL], options: PHFetchOptions?) -> PHFetchResult<PHAsset>
}
