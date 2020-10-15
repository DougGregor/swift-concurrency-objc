
@available(iOS 8, *)
class PHAssetCollectionChangeRequest : PHChangeRequest {
  @available(iOS 8, *)
  class func creationRequestForAssetCollection(withTitle title: String) -> Self
  @available(iOS 8, *)
  var placeholderForCreatedAssetCollection: PHObjectPlaceholder { get }
  @available(iOS 8, *)
  class func deleteAssetCollections(_ assetCollections: NSFastEnumeration)
  @available(iOS 8, *)
  convenience init?(for assetCollection: PHAssetCollection)
  @available(iOS 8, *)
  convenience init?(for assetCollection: PHAssetCollection, assets: PHFetchResult<PHAsset>)
  @available(iOS 8, *)
  var title: String
  @available(iOS 8, *)
  func addAssets(_ assets: NSFastEnumeration)
  @available(iOS 8, *)
  func insertAssets(_ assets: NSFastEnumeration, at indexes: IndexSet)
  @available(iOS 8, *)
  func removeAssets(_ assets: NSFastEnumeration)
  @available(iOS 8, *)
  func removeAssets(at indexes: IndexSet)
  @available(iOS 8, *)
  func replaceAssets(at indexes: IndexSet, withAssets assets: NSFastEnumeration)
  @available(iOS 8, *)
  func moveAssets(at fromIndexes: IndexSet, to toIndex: Int)
}
