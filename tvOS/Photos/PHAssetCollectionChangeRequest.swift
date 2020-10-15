
@available(tvOS 10, *)
class PHAssetCollectionChangeRequest : PHChangeRequest {
  @available(tvOS 10, *)
  class func creationRequestForAssetCollection(withTitle title: String) -> Self
  @available(tvOS 10, *)
  var placeholderForCreatedAssetCollection: PHObjectPlaceholder { get }
  @available(tvOS 10, *)
  class func deleteAssetCollections(_ assetCollections: NSFastEnumeration)
  @available(tvOS 10, *)
  convenience init?(for assetCollection: PHAssetCollection)
  @available(tvOS 10, *)
  convenience init?(for assetCollection: PHAssetCollection, assets: PHFetchResult<PHAsset>)
  @available(tvOS 10, *)
  var title: String
  @available(tvOS 10, *)
  func addAssets(_ assets: NSFastEnumeration)
  @available(tvOS 10, *)
  func insertAssets(_ assets: NSFastEnumeration, at indexes: IndexSet)
  @available(tvOS 10, *)
  func removeAssets(_ assets: NSFastEnumeration)
  @available(tvOS 10, *)
  func removeAssets(at indexes: IndexSet)
  @available(tvOS 10, *)
  func replaceAssets(at indexes: IndexSet, withAssets assets: NSFastEnumeration)
  @available(tvOS 10, *)
  func moveAssets(at fromIndexes: IndexSet, to toIndex: Int)
}
