
@available(macOS 10.13, *)
class PHFetchOptions : NSObject, NSCopying {
  @available(macOS 10.13, *)
  var predicate: NSPredicate?
  @available(macOS 10.13, *)
  var sortDescriptors: [NSSortDescriptor]?
  @available(macOS 10.13, *)
  var includeHiddenAssets: Bool
  @available(macOS 10.15, *)
  var includeAllBurstAssets: Bool
  @available(macOS 10.13, *)
  var includeAssetSourceTypes: PHAssetSourceType
  @available(macOS 10.13, *)
  var fetchLimit: Int
  @available(macOS 10.13, *)
  var wantsIncrementalChangeDetails: Bool
}
