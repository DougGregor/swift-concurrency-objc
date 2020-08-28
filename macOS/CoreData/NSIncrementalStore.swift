
@available(macOS 10.7, *)
class NSIncrementalStore : NSPersistentStore {
  func execute(_ request: NSPersistentStoreRequest, with context: NSManagedObjectContext?) throws -> Any
  func newValuesForObject(with objectID: NSManagedObjectID, with context: NSManagedObjectContext) throws -> NSIncrementalStoreNode
  func newValue(forRelationship relationship: NSRelationshipDescription, forObjectWith objectID: NSManagedObjectID, with context: NSManagedObjectContext?) throws -> Any
  class func identifierForNewStore(at storeURL: URL) -> Any
  func obtainPermanentIDs(for array: [NSManagedObject]) throws -> [NSManagedObjectID]
  func managedObjectContextDidRegisterObjects(with objectIDs: [NSManagedObjectID])
  func managedObjectContextDidUnregisterObjects(with objectIDs: [NSManagedObjectID])
  func newObjectID(for entity: NSEntityDescription, referenceObject data: Any) -> NSManagedObjectID
  func referenceObject(for objectID: NSManagedObjectID) -> Any
}
