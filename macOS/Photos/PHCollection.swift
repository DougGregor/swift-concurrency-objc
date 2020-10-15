
@available(macOS 10.13, *)
class PHCollection : PHObject {
  @available(macOS 10.15, *)
  var canContainAssets: Bool { get }
  @available(macOS 10.15, *)
  var canContainCollections: Bool { get }
  @available(macOS 10.13, *)
  var localizedTitle: String? { get }
  @available(macOS 10.15, *)
  func canPerform(_ anOperation: PHCollectionEditOperation) -> Bool
  @available(macOS 10.15, *)
  class func fetchCollections(in collectionList: PHCollectionList, options: PHFetchOptions?) -> PHFetchResult<PHCollection>
  @available(macOS 10.15, *)
  class func fetchTopLevelUserCollections(with options: PHFetchOptions?) -> PHFetchResult<PHCollection>
}
@available(macOS 10.13, *)
class PHAssetCollection : PHCollection {
  @available(macOS 10.15, *)
  var assetCollectionType: PHAssetCollectionType { get }
  @available(macOS 10.15, *)
  var assetCollectionSubtype: PHAssetCollectionSubtype { get }
  @available(macOS 10.15, *)
  var estimatedAssetCount: Int { get }
  @available(macOS 10.15, *)
  var startDate: Date? { get }
  @available(macOS 10.15, *)
  var endDate: Date? { get }
  @available(macOS 10.15, *)
  var approximateLocation: CLLocation? { get }
  @available(macOS 10.15, *)
  var localizedLocationNames: [String] { get }
  @available(macOS 10.15, *)
  class func fetchAssetCollections(withLocalIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(macOS 10.15, *)
  class func fetchAssetCollections(with type: PHAssetCollectionType, subtype: PHAssetCollectionSubtype, options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(macOS 10.15, *)
  class func fetchAssetCollectionsContaining(_ asset: PHAsset, with type: PHAssetCollectionType, options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(macOS 10.15, *)
  class func fetchAssetCollections(withALAssetGroupURLs assetGroupURLs: [URL], options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(macOS 10.15, *)
  class func transientAssetCollection(with assets: [PHAsset], title: String?) -> PHAssetCollection
  @available(macOS 10.15, *)
  class func transientAssetCollection(withAssetFetchResult fetchResult: PHFetchResult<PHAsset>, title: String?) -> PHAssetCollection
}
@available(macOS 10.13, *)
class PHCollectionList : PHCollection {
  @available(macOS 10.15, *)
  var collectionListType: PHCollectionListType { get }
  @available(macOS 10.15, *)
  var collectionListSubtype: PHCollectionListSubtype { get }
  @available(macOS 10.15, *)
  var startDate: Date? { get }
  @available(macOS 10.15, *)
  var endDate: Date? { get }
  @available(macOS 10.15, *)
  var localizedLocationNames: [String] { get }
  @available(macOS 10.15, *)
  class func fetchCollectionListsContaining(_ collection: PHCollection, options: PHFetchOptions?) -> PHFetchResult<PHCollectionList>
  @available(macOS 10.15, *)
  class func fetchCollectionLists(withLocalIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult<PHCollectionList>
  @available(macOS 10.15, *)
  class func fetchCollectionLists(with collectionListType: PHCollectionListType, subtype: PHCollectionListSubtype, options: PHFetchOptions?) -> PHFetchResult<PHCollectionList>
  @available(macOS 10.15, *)
  class func transientCollectionList(with collections: [PHCollection], title: String?) -> PHCollectionList
  @available(macOS 10.15, *)
  class func transientCollectionList(withCollectionsFetchResult fetchResult: PHFetchResult<PHCollection>, title: String?) -> PHCollectionList
}
