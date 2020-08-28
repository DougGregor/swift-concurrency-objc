
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  static let NSManagedObjectContextWillSave: NSNotification.Name
  @available(watchOS 2.0, *)
  static let NSManagedObjectContextDidSave: NSNotification.Name
  @available(watchOS 2.0, *)
  static let NSManagedObjectContextObjectsDidChange: NSNotification.Name
  @available(watchOS 3.2, *)
  static let NSManagedObjectContextDidSaveObjectIDs: NSNotification.Name
  @available(watchOS 3.2, *)
  static let NSManagedObjectContextDidMergeChangesObjectIDs: NSNotification.Name
}
@available(watchOS 2.0, *)
let NSInsertedObjectsKey: String
@available(watchOS 2.0, *)
let NSUpdatedObjectsKey: String
@available(watchOS 2.0, *)
let NSDeletedObjectsKey: String
@available(watchOS 2.0, *)
let NSRefreshedObjectsKey: String
@available(watchOS 2.0, *)
let NSInvalidatedObjectsKey: String
@available(watchOS 3.0, *)
let NSManagedObjectContextQueryGenerationKey: String
@available(watchOS 2.0, *)
let NSInvalidatedAllObjectsKey: String
@available(watchOS 3.2, *)
let NSInsertedObjectIDsKey: String
@available(watchOS 3.2, *)
let NSUpdatedObjectIDsKey: String
@available(watchOS 3.2, *)
let NSDeletedObjectIDsKey: String
@available(watchOS 3.2, *)
let NSRefreshedObjectIDsKey: String
@available(watchOS 3.2, *)
let NSInvalidatedObjectIDsKey: String
@available(watchOS 2.0, *)
enum NSManagedObjectContextConcurrencyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use another NSManagedObjectContextConcurrencyType")
  case confinementConcurrencyType
  case privateQueueConcurrencyType
  case mainQueueConcurrencyType
}
@available(watchOS 2.0, *)
class NSManagedObjectContext : NSObject, NSCoding {
  @available(watchOS 2.0, *)
  init(concurrencyType ct: NSManagedObjectContextConcurrencyType)
  @available(watchOS 2.0, *)
  func perform(_ block: @escaping () -> Void)
  @available(watchOS 2.0, *)
  func performAndWait(_ block: () -> Void)
  var persistentStoreCoordinator: NSPersistentStoreCoordinator?
  @available(watchOS 2.0, *)
  var parent: NSManagedObjectContext?
  @available(watchOS 2.0, *)
  var name: String?
  var undoManager: UndoManager?
  var hasChanges: Bool { get }
  @available(watchOS 2.0, *)
  var userInfo: NSMutableDictionary { get }
  @available(watchOS 2.0, *)
  var concurrencyType: NSManagedObjectContextConcurrencyType { get }
  func registeredObject(for objectID: NSManagedObjectID) -> NSManagedObject?
  func object(with objectID: NSManagedObjectID) -> NSManagedObject
  @available(watchOS 2.0, *)
  func existingObject(with objectID: NSManagedObjectID) throws -> NSManagedObject
  func fetch(_ request: NSFetchRequest<NSFetchRequestResult>) throws -> [Any]
  @available(watchOS 2.0, *)
  func count(for request: NSFetchRequest<NSFetchRequestResult>) throws -> Int
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  func refreshAllObjects()
  var propagatesDeletesAtEndOfEvent: Bool
  var retainsRegisteredObjects: Bool
  @available(watchOS 2.0, *)
  var shouldDeleteInaccessibleFaults: Bool
  @available(watchOS 2.0, *)
  func shouldHandleInaccessibleFault(_ fault: NSManagedObject, for oid: NSManagedObjectID, triggeredByProperty property: NSPropertyDescription?) -> Bool
  var stalenessInterval: TimeInterval
  var mergePolicy: Any
  @available(watchOS 2.0, *)
  func obtainPermanentIDs(for objects: [NSManagedObject]) throws
  @available(watchOS 2.0, *)
  func mergeChanges(fromContextDidSave notification: Notification)
  @available(watchOS 2.0, *)
  class func mergeChanges(fromRemoteContextSave changeNotificationData: [AnyHashable : Any], into contexts: [NSManagedObjectContext])
  @available(watchOS 3.0, *)
  var queryGenerationToken: NSQueryGenerationToken? { get }
  @available(watchOS 3.0, *)
  func setQueryGenerationFrom(_ generation: NSQueryGenerationToken?) throws
  @available(watchOS 3.0, *)
  var automaticallyMergesChangesFromParent: Bool
  @available(watchOS 4.0, *)
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
