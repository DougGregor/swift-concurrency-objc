
@available(iOS 8, *)
class PHCollectionListChangeRequest : PHChangeRequest {
  @available(iOS 8, *)
  class func creationRequestForCollectionList(withTitle title: String) -> Self
  @available(iOS 8, *)
  var placeholderForCreatedCollectionList: PHObjectPlaceholder { get }
  @available(iOS 8, *)
  class func deleteCollectionLists(_ collectionLists: NSFastEnumeration)
  @available(iOS 8, *)
  convenience init?(for collectionList: PHCollectionList)
  @available(iOS 8, *)
  convenience init?(for collectionList: PHCollectionList, childCollections: PHFetchResult<PHCollection>)
  @available(iOS 8, *)
  var title: String
  @available(iOS 8, *)
  func addChildCollections(_ collections: NSFastEnumeration)
  @available(iOS 8, *)
  func insertChildCollections(_ collections: NSFastEnumeration, at indexes: IndexSet)
  @available(iOS 8, *)
  func removeChildCollections(_ collections: NSFastEnumeration)
  @available(iOS 8, *)
  func removeChildCollections(at indexes: IndexSet)
  @available(iOS 8, *)
  func replaceChildCollections(at indexes: IndexSet, withChildCollections collections: NSFastEnumeration)
  @available(iOS 8, *)
  func moveChildCollections(at indexes: IndexSet, to toIndex: Int)
}
