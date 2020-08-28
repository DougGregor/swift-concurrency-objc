
@available(iOS 8, *)
class PHCollection : PHObject {
  @available(iOS 8, *)
  var canContainAssets: Bool { get }
  @available(iOS 8, *)
  var canContainCollections: Bool { get }
  @available(iOS 8, *)
  var localizedTitle: String? { get }
  @available(iOS 8, *)
  func canPerform(_ anOperation: PHCollectionEditOperation) -> Bool
  @available(iOS 8, *)
  class func fetchCollections(in collectionList: PHCollectionList, options: PHFetchOptions?) -> PHFetchResult<PHCollection>
  @available(iOS 8, *)
  class func fetchTopLevelUserCollections(with options: PHFetchOptions?) -> PHFetchResult<PHCollection>
}
@available(iOS 8, *)
class PHAssetCollection : PHCollection {
  @available(iOS 8, *)
  var assetCollectionType: PHAssetCollectionType { get }
  @available(iOS 8, *)
  var assetCollectionSubtype: PHAssetCollectionSubtype { get }
  @available(iOS 8, *)
  var estimatedAssetCount: Int { get }
  @available(iOS 8, *)
  var startDate: Date? { get }
  @available(iOS 8, *)
  var endDate: Date? { get }
  @available(iOS 8, *)
  var approximateLocation: CLLocation? { get }
  @available(iOS 8, *)
  var localizedLocationNames: [String] { get }
  @available(iOS 8, *)
  class func fetchAssetCollections(withLocalIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(iOS 8, *)
  class func fetchAssetCollections(with type: PHAssetCollectionType, subtype: PHAssetCollectionSubtype, options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(iOS 8, *)
  class func fetchAssetCollectionsContaining(_ asset: PHAsset, with type: PHAssetCollectionType, options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(iOS 8, *)
  class func fetchAssetCollections(withALAssetGroupURLs assetGroupURLs: [URL], options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(iOS 8, *)
  class func fetchMoments(inMomentList momentList: PHCollectionList, options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(iOS 8, *)
  class func fetchMoments(with options: PHFetchOptions?) -> PHFetchResult<PHAssetCollection>
  @available(iOS 8, *)
  class func transientAssetCollection(with assets: [PHAsset], title: String?) -> PHAssetCollection
  @available(iOS 8, *)
  class func transientAssetCollection(withAssetFetchResult fetchResult: PHFetchResult<PHAsset>, title: String?) -> PHAssetCollection
}
@available(iOS 8, *)
class PHCollectionList : PHCollection {
  @available(iOS 8, *)
  var collectionListType: PHCollectionListType { get }
  @available(iOS 8, *)
  var collectionListSubtype: PHCollectionListSubtype { get }
  @available(iOS 8, *)
  var startDate: Date? { get }
  @available(iOS 8, *)
  var endDate: Date? { get }
  @available(iOS 8, *)
  var localizedLocationNames: [String] { get }
  @available(iOS 8, *)
  class func fetchCollectionListsContaining(_ collection: PHCollection, options: PHFetchOptions?) -> PHFetchResult<PHCollectionList>
  @available(iOS 8, *)
  class func fetchCollectionLists(withLocalIdentifiers identifiers: [String], options: PHFetchOptions?) -> PHFetchResult<PHCollectionList>
  @available(iOS 8, *)
  class func fetchCollectionLists(with collectionListType: PHCollectionListType, subtype: PHCollectionListSubtype, options: PHFetchOptions?) -> PHFetchResult<PHCollectionList>
  @available(iOS 8, *)
  class func fetchMomentLists(with momentListSubtype: PHCollectionListSubtype, containingMoment moment: PHAssetCollection, options: PHFetchOptions?) -> PHFetchResult<PHCollectionList>
  @available(iOS 8, *)
  class func fetchMomentLists(with momentListSubtype: PHCollectionListSubtype, options: PHFetchOptions?) -> PHFetchResult<PHCollectionList>
  @available(iOS 8, *)
  class func transientCollectionList(with collections: [PHCollection], title: String?) -> PHCollectionList
  @available(iOS 8, *)
  class func transientCollectionList(withCollectionsFetchResult fetchResult: PHFetchResult<PHCollection>, title: String?) -> PHCollectionList
}
