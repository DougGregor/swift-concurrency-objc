
@available(iOS 8, *)
class PHFetchOptions : NSObject, NSCopying {
  @available(iOS 8, *)
  var predicate: NSPredicate?
  @available(iOS 8, *)
  var sortDescriptors: [NSSortDescriptor]?
  @available(iOS 8, *)
  var includeHiddenAssets: Bool
  @available(iOS 8, *)
  var includeAllBurstAssets: Bool
  @available(iOS 9, *)
  var includeAssetSourceTypes: PHAssetSourceType
  @available(iOS 9, *)
  var fetchLimit: Int
  @available(iOS 8, *)
  var wantsIncrementalChangeDetails: Bool
}
