
@available(tvOS 3.0, *)
class NSAtomicStore : NSPersistentStore {
  func load() throws
  func save() throws
  func newCacheNode(for managedObject: NSManagedObject) -> NSAtomicStoreCacheNode
  func updateCacheNode(_ node: NSAtomicStoreCacheNode, from managedObject: NSManagedObject)
  func cacheNodes() -> Set<NSAtomicStoreCacheNode>
  func addCacheNodes(_ cacheNodes: Set<NSAtomicStoreCacheNode>)
  func willRemoveCacheNodes(_ cacheNodes: Set<NSAtomicStoreCacheNode>)
  func cacheNode(for objectID: NSManagedObjectID) -> NSAtomicStoreCacheNode?
  func objectID(for entity: NSEntityDescription, withReferenceObject data: Any) -> NSManagedObjectID
  func newReferenceObject(for managedObject: NSManagedObject) -> Any
  func referenceObject(for objectID: NSManagedObjectID) -> Any
}
