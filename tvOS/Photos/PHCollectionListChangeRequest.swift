
@available(tvOS 10, *)
class PHCollectionListChangeRequest : PHChangeRequest {
  @available(tvOS 10, *)
  class func creationRequestForCollectionList(withTitle title: String) -> Self
  @available(tvOS 10, *)
  var placeholderForCreatedCollectionList: PHObjectPlaceholder { get }
  @available(tvOS 10, *)
  class func deleteCollectionLists(_ collectionLists: NSFastEnumeration)
  @available(tvOS 10, *)
  convenience init?(for collectionList: PHCollectionList)
  @available(tvOS 10, *)
  convenience init?(for collectionList: PHCollectionList, childCollections: PHFetchResult<PHCollection>)
  @available(tvOS 14, *)
  convenience init?(forTopLevelCollectionListUserCollections childCollections: PHFetchResult<PHCollection>)
  @available(tvOS 10, *)
  var title: String
  @available(tvOS 10, *)
  func addChildCollections(_ collections: NSFastEnumeration)
  @available(tvOS 10, *)
  func insertChildCollections(_ collections: NSFastEnumeration, at indexes: IndexSet)
  @available(tvOS 10, *)
  func removeChildCollections(_ collections: NSFastEnumeration)
  @available(tvOS 10, *)
  func removeChildCollections(at indexes: IndexSet)
  @available(tvOS 10, *)
  func replaceChildCollections(at indexes: IndexSet, withChildCollections collections: NSFastEnumeration)
  @available(tvOS 10, *)
  func moveChildCollections(at indexes: IndexSet, to toIndex: Int)
}
