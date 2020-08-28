
@available(iOS 9.0, *)
class NSBatchDeleteRequest : NSPersistentStoreRequest {
  init(fetchRequest fetch: NSFetchRequest<NSFetchRequestResult>)
  convenience init(objectIDs objects: [NSManagedObjectID])
  var resultType: NSBatchDeleteRequestResultType
  @NSCopying var fetchRequest: NSFetchRequest<NSFetchRequestResult> { get }
}
