
@available(tvOS 10, *)
class PHFetchOptions : NSObject, NSCopying {
  @available(tvOS 10, *)
  var predicate: NSPredicate?
  @available(tvOS 10, *)
  var sortDescriptors: [NSSortDescriptor]?
  @available(tvOS 10, *)
  var includeHiddenAssets: Bool
  @available(tvOS 10, *)
  var includeAllBurstAssets: Bool
  @available(tvOS 10, *)
  var includeAssetSourceTypes: PHAssetSourceType
  @available(tvOS 10, *)
  var fetchLimit: Int
  @available(tvOS 10, *)
  var wantsIncrementalChangeDetails: Bool
}
