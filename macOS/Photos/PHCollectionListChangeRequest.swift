
@available(macOS 10.15, *)
class PHCollectionListChangeRequest : PHChangeRequest {
  @available(macOS 10.15, *)
  class func creationRequestForCollectionList(withTitle title: String) -> Self
  @available(macOS 10.15, *)
  var placeholderForCreatedCollectionList: PHObjectPlaceholder { get }
  @available(macOS 10.15, *)
  class func deleteCollectionLists(_ collectionLists: NSFastEnumeration)
  @available(macOS 10.15, *)
  convenience init?(for collectionList: PHCollectionList)
  @available(macOS 10.15, *)
  convenience init?(for collectionList: PHCollectionList, childCollections: PHFetchResult<PHCollection>)
  @available(macOS 11, *)
  convenience init?(forTopLevelCollectionListUserCollections childCollections: PHFetchResult<PHCollection>)
  @available(macOS 10.15, *)
  var title: String
  @available(macOS 10.15, *)
  func addChildCollections(_ collections: NSFastEnumeration)
  @available(macOS 10.15, *)
  func insertChildCollections(_ collections: NSFastEnumeration, at indexes: IndexSet)
  @available(macOS 10.15, *)
  func removeChildCollections(_ collections: NSFastEnumeration)
  @available(macOS 10.15, *)
  func removeChildCollections(at indexes: IndexSet)
  @available(macOS 10.15, *)
  func replaceChildCollections(at indexes: IndexSet, withChildCollections collections: NSFastEnumeration)
  @available(macOS 10.15, *)
  func moveChildCollections(at indexes: IndexSet, to toIndex: Int)
}
