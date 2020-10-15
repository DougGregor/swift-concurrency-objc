
@available(tvOS 10, *)
class PHCollection : PHObject {
  @available(tvOS 10, *)
  var canContainAssets: Bool { get }
  @available(tvOS 10, *)
  var canContainCollections: Bool { get }
  @available(tvOS 10, *)
  var localizedTitle: String? { get }
  @available(tvOS 10, *)
  func canPerform(_ anOperation: PHCollectionEditOperation) -> Bool
  @available(tvOS 10, *)
  class func fetchCollections(in collectionList: PHCollectionList, options: PHFetchOptions?) -> PHFetchResult<PHCollection>
  @available(tvOS 10, *)
  class func fetchTopLevelUserCollections(with options: PHFetchOptions?) -> PHFetchResult<PHCollection>
}
@available(tvOS 10, *)
class PHAssetCollection : PHCollection {
  @available(tvOS 10, *)
  var assetCollectionType: PHAssetCollectionType { get }
  @available(tvOS 10, *)
  var assetCollectionSubtype: PHAssetCollectionSubtype { get }
  @available(tvOS 10, *)
  var estimatedAssetCount: Int { get }
  @available(tvOS 10, *)
  var startDate: Date? { get }
  @available(tvOS 10, *)
  var endDate: Date? { get }
  @available(tvOS 10, *)
  var approximateLocation: CLLocation? { get }
  @available(tvOS 10, *)
  var localizedLocationNames: [String] { get }
  @available(tvOS 10, *)
  class func fetchAssetCollections(withLocalIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(tvOS 10, *)
  class func fetchAssetCollections(with type: PHAssetCollectionType, subtype: PHAssetCollectionSubtype, options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(tvOS 10, *)
  class func fetchAssetCollectionsContaining(_ asset: PHAsset, with type: PHAssetCollectionType, options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(tvOS 10, *)
  class func fetchAssetCollections(withALAssetGroupURLs assetGroupURLs: [URL], options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(tvOS, introduced: 10, deprecated: 13, message: "Will be removed in a future release")
  class func fetchMoments(inMomentList momentList: PHCollectionList, options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(tvOS, introduced: 10, deprecated: 13, message: "Will be removed in a future release")
  class func fetchMoments(with options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(tvOS 10, *)
  class func transientAssetCollection(with assets: [PHAsset], title: String?) -> PHAssetCollection
  @available(tvOS 10, *)
  class func transientAssetCollection(withAssetFetchResult fetchResult: PHFetchResult<PHAsset>, title: String?) -> PHAssetCollection
}
@available(tvOS 10, *)
class PHCollectionList : PHCollection {
  @available(tvOS 10, *)
  var collectionListType: PHCollectionListType { get }
  @available(tvOS 10, *)
  var collectionListSubtype: PHCollectionListSubtype { get }
  @available(tvOS 10, *)
  var startDate: Date? { get }
  @available(tvOS 10, *)
  var endDate: Date? { get }
  @available(tvOS 10, *)
  var localizedLocationNames: [String] { get }
  @available(tvOS 10, *)
  class func fetchCollectionListsContaining(_ collection: PHCollection, options: PHFetchOptions?) -> PHFetchResult<PHCollectionList>
  @available(tvOS 10, *)
  class func fetchCollectionLists(withLocalIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult<PHCollectionList>
  @available(tvOS 10, *)
  class func fetchCollectionLists(with collectionListType: PHCollectionListType, subtype: PHCollectionListSubtype, options: PHFetchOptions?) -> PHFetchResult<PHCollectionList>
  @available(tvOS, introduced: 10, deprecated: 13, message: "Will be removed in a future release")
  class func fetchMomentLists(with momentListSubtype: PHCollectionListSubtype, containingMoment moment: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult<PHCollectionList>
  @available(tvOS, introduced: 10, deprecated: 13, message: "Will be removed in a future release")
  class func fetchMomentLists(with momentListSubtype: PHCollectionListSubtype, options: PHFetchOptions?) -> PHFetchResult<PHCollectionList>
  @available(tvOS 10, *)
  class func transientCollectionList(with collections: [PHCollection], title: String?) -> PHCollectionList
  @available(tvOS 10, *)
  class func transientCollectionList(withCollectionsFetchResult fetchResult: PHFetchResult<PHCollection>, title: String?) -> PHCollectionList
}
