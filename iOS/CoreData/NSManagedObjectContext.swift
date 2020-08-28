
extension NSNotification.Name {
  @available(iOS 3.0, *)
  static let NSManagedObjectContextWillSave: NSNotification.Name
  @available(iOS 3.0, *)
  static let NSManagedObjectContextDidSave: NSNotification.Name
  @available(iOS 3.0, *)
  static let NSManagedObjectContextObjectsDidChange: NSNotification.Name
  @available(iOS 10.3, *)
  static let NSManagedObjectContextDidSaveObjectIDs: NSNotification.Name
  @available(iOS 10.3, *)
  static let NSManagedObjectContextDidMergeChangesObjectIDs: NSNotification.Name
}
@available(iOS 3.0, *)
let NSInsertedObjectsKey: String
@available(iOS 3.0, *)
let NSUpdatedObjectsKey: String
@available(iOS 3.0, *)
let NSDeletedObjectsKey: String
@available(iOS 3.0, *)
let NSRefreshedObjectsKey: String
@available(iOS 3.0, *)
let NSInvalidatedObjectsKey: String
@available(iOS 10.0, *)
let NSManagedObjectContextQueryGenerationKey: String
@available(iOS 3.0, *)
let NSInvalidatedAllObjectsKey: String
@available(iOS 10.3, *)
let NSInsertedObjectIDsKey: String
@available(iOS 10.3, *)
let NSUpdatedObjectIDsKey: String
@available(iOS 10.3, *)
let NSDeletedObjectIDsKey: String
@available(iOS 10.3, *)
let NSRefreshedObjectIDsKey: String
@available(iOS 10.3, *)
let NSInvalidatedObjectIDsKey: String
@available(iOS 5.0, *)
enum NSManagedObjectContextConcurrencyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(iOS, introduced: 3.0, deprecated: 9.0, message: "Use another NSManagedObjectContextConcurrencyType")
  case confinementConcurrencyType
  case privateQueueConcurrencyType
  case mainQueueConcurrencyType
}
@available(iOS 3.0, *)
class NSManagedObjectContext : NSObject, NSCoding, NSLocking {
  @available(iOS 5.0, *)
  init(concurrencyType ct: NSManagedObjectContextConcurrencyType)
  @available(iOS 5.0, *)
  func perform(_ block: @escaping () -> Void)
  @available(iOS 5.0, *)
  func performAndWait(_ block: () -> Void)
  var persistentStoreCoordinator: NSPersistentStoreCoordinator?
  @available(iOS 5.0, *)
  var parent: NSManagedObjectContext?
  @available(iOS 8.0, *)
  var name: String?
  var undoManager: UndoManager?
  var hasChanges: Bool { get }
  @available(iOS 5.0, *)
  var userInfo: NSMutableDictionary { get }
  @available(iOS 5.0, *)
  var concurrencyType: NSManagedObjectContextConcurrencyType { get }
  func registeredObject(for objectID: NSManagedObjectID) -> NSManagedObject?
  func object(with objectID: NSManagedObjectID) -> NSManagedObject
  @available(iOS 3.0, *)
  func existingObject(with objectID: NSManagedObjectID) throws -> NSManagedObject
  func fetch(_ request: NSFetchRequest<NSFetchRequestResult>) throws -> [Any]
  @available(iOS 3.0, *)
  func count(for request: NSFetchRequest<NSFetchRequestResult>) throws -> Int
  @available(iOS 8.0, *)
  func execute(_ request: NSPersistentStoreRequest) throws -> NSPersistentStoreResult
  func insert(_ object: NSManagedObject)
  func delete(_ object: NSManagedObject)
  func refresh(_ object: NSManagedObject, mergeChanges flag: Bool)
  func detectConflicts(for object: NSManagedObject)
  func processPendingChanges()
  func assign(_ object: Any, to store: NSPersistentStore)
  var insertedObjects: Set<NSManagedObject> { get }
  var updatedObjects: Set<NSManagedObject> { get }
  var deletedObjects: Set<NSManagedObject> { get }
  var registeredObjects: Set<NSManagedObject> { get }
  func undo()
  func redo()
  func reset()
  func rollback()
  func save() throws
  @available(iOS 8.3, *)
  func refreshAllObjects()
  @available(iOS, introduced: 3.0, deprecated: 8.0, message: "Use a queue style context and -performBlock: instead")
  func tryLock() -> Bool
  var propagatesDeletesAtEndOfEvent: Bool
  var retainsRegisteredObjects: Bool
  @available(iOS 9.0, *)
  var shouldDeleteInaccessibleFaults: Bool
  @available(iOS 9.0, *)
  func shouldHandleInaccessibleFault(_ fault: NSManagedObject, for oid: NSManagedObjectID, triggeredByProperty property: NSPropertyDescription?) -> Bool
  var stalenessInterval: TimeInterval
  var mergePolicy: Any
  @available(iOS 3.0, *)
  func obtainPermanentIDs(for objects: [NSManagedObject]) throws
  @available(iOS 3.0, *)
  func mergeChanges(fromContextDidSave notification: Notification)
  @available(iOS 9.0, *)
  class func mergeChanges(fromRemoteContextSave changeNotificationData: [AnyHashable : Any], into contexts: [NSManagedObjectContext])
  @available(iOS 10.0, *)
  var queryGenerationToken: NSQueryGenerationToken? { get }
  @available(iOS 10.0, *)
  func setQueryGenerationFrom(_ generation: NSQueryGenerationToken?) throws
  @available(iOS 10.0, *)
  var automaticallyMergesChangesFromParent: Bool
  @available(iOS 11.0, *)
  var transactionAuthor: String?
}

extension NSManagedObjectContext {
  func fetch<T>(_ request: NSFetchRequest<T>) throws -> [T] where T : NSFetchRequestResult
  func count<T>(for request: NSFetchRequest<T>) throws -> Int where T : NSFetchRequestResult
}

@available(iOS 14.0, *)
extension NSManagedObjectContext {
  static let willSaveObjectsNotification: Notification.Name
  static let didSaveObjectsNotification: Notification.Name
  static let didChangeObjectsNotification: Notification.Name
  static let didSaveObjectIDsNotification: Notification.Name
  static let didMergeChangesObjectIDsNotification: Notification.Name
  enum NotificationKey : String {
    case queryGeneration
    case invalidatedAllObjects
    case insertedObjects
    case updatedObjects
    case deletedObjects
    case refreshedObjects
    case invalidatedObjects
    case insertedObjectIDs
    case updatedObjectIDs
    case deletedObjectIDs
    case refreshedObjectIDs
    case invalidatedObjectIDs
  }
}

@available(iOS 14.0, *)
extension NSManagedObjectContext.NotificationKey : Equatable {
}

@available(iOS 14.0, *)
extension NSManagedObjectContext.NotificationKey : Hashable {
}

@available(iOS 14.0, *)
extension NSManagedObjectContext.NotificationKey : RawRepresentable {
}
