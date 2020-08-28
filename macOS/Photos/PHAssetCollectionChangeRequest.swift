
@available(macOS 10.15, *)
class PHAssetCollectionChangeRequest : PHChangeRequest {
  @available(macOS 10.15, *)
  class func creationRequestForAssetCollection(withTitle title: String) -> Self
  @available(macOS 10.15, *)
  var placeholderForCreatedAssetCollection: PHObjectPlaceholder { get }
  @available(macOS 10.15, *)
  class func deleteAssetCollections(_ assetCollections: NSFastEnumeration)
  @available(macOS 10.15, *)
  convenience init?(for assetCollection: PHAssetCollection)
  @available(macOS 10.15, *)
  convenience init?(for assetCollection: PHAssetCollection, assets: PHFetchResult<PHAsset>)
  @available(macOS 10.15, *)
  var title: String
  @available(macOS 10.15, *)
  func addAssets(_ assets: NSFastEnumeration)
  @available(macOS 10.15, *)
  func insertAssets(_ assets: NSFastEnumeration, at indexes: IndexSet)
  @available(macOS 10.15, *)
  func removeAssets(_ assets: NSFastEnumeration)
  @available(macOS 10.15, *)
  func removeAssets(at indexes: IndexSet)
  @available(macOS 10.15, *)
  func replaceAssets(at indexes: IndexSet, withAssets assets: NSFastEnumeration)
  @available(macOS 10.15, *)
  func moveAssets(at fromIndexes: IndexSet, to toIndex: Int)
}
