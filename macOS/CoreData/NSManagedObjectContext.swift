
extension NSNotification.Name {
  @available(macOS 10.5, *)
  static let NSManagedObjectContextWillSave: NSNotification.Name
  @available(macOS 10.4, *)
  static let NSManagedObjectContextDidSave: NSNotification.Name
  @available(macOS 10.4, *)
  static let NSManagedObjectContextObjectsDidChange: NSNotification.Name
  @available(macOS 10.12.4, *)
  static let NSManagedObjectContextDidSaveObjectIDs: NSNotification.Name
  @available(macOS 10.12.4, *)
  static let NSManagedObjectContextDidMergeChangesObjectIDs: NSNotification.Name
}
@available(macOS 10.4, *)
let NSInsertedObjectsKey: String
@available(macOS 10.4, *)
let NSUpdatedObjectsKey: String
@available(macOS 10.4, *)
let NSDeletedObjectsKey: String
@available(macOS 10.5, *)
let NSRefreshedObjectsKey: String
@available(macOS 10.5, *)
let NSInvalidatedObjectsKey: String
@available(macOS 10.12, *)
let NSManagedObjectContextQueryGenerationKey: String
@available(macOS 10.5, *)
let NSInvalidatedAllObjectsKey: String
@available(macOS 10.12.4, *)
let NSInsertedObjectIDsKey: String
@available(macOS 10.12.4, *)
let NSUpdatedObjectIDsKey: String
@available(macOS 10.12.4, *)
let NSDeletedObjectIDsKey: String
@available(macOS 10.12.4, *)
let NSRefreshedObjectIDsKey: String
@available(macOS 10.12.4, *)
let NSInvalidatedObjectIDsKey: String
@available(macOS 10.7, *)
enum NSManagedObjectContextConcurrencyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS, introduced: 10.4, deprecated: 10.11, message: "Use another NSManagedObjectContextConcurrencyType")
  case confinementConcurrencyType
  case privateQueueConcurrencyType
  case mainQueueConcurrencyType
}
@available(macOS 10.4, *)
class NSManagedObjectContext : NSObject, NSCoding, NSLocking {
  @available(macOS 10.7, *)
  init(concurrencyType ct: NSManagedObjectContextConcurrencyType)
  @available(macOS 10.7, *)
  func perform(_ block: @escaping () -> Void)
  @available(macOS 10.7, *)
  func performAndWait(_ block: () -> Void)
  var persistentStoreCoordinator: NSPersistentStoreCoordinator?
  @available(macOS 10.7, *)
  var parent: NSManagedObjectContext?
  @available(macOS 10.10, *)
  var name: String?
  var undoManager: UndoManager?
  var hasChanges: Bool { get }
  @available(macOS 10.7, *)
  var userInfo: NSMutableDictionary { get }
  @available(macOS 10.7, *)
  var concurrencyType: NSManagedObjectContextConcurrencyType { get }
  func registeredObject(for objectID: NSManagedObjectID) -> NSManagedObject?
  func object(with objectID: NSManagedObjectID) -> NSManagedObject
  @available(macOS 10.6, *)
  func existingObject(with objectID: NSManagedObjectID) throws -> NSManagedObject
  func fetch(_ request: NSFetchRequest<NSFetchRequestResult>) throws -> [Any]
  @available(macOS 10.5, *)
  func count(for request: NSFetchRequest<NSFetchRequestResult>) throws -> Int
  @available(macOS 10.10, *)
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
  @available(macOS 10.11, *)
  func refreshAllObjects()
  @available(macOS, introduced: 10.4, deprecated: 10.10, message: "Use a queue style context and -performBlock: instead")
  func tryLock() -> Bool
  var propagatesDeletesAtEndOfEvent: Bool
  var retainsRegisteredObjects: Bool
  @available(macOS 10.11, *)
  var shouldDeleteInaccessibleFaults: Bool
  @available(macOS 10.11, *)
  func shouldHandleInaccessibleFault(_ fault: NSManagedObject, for oid: NSManagedObjectID, triggeredByProperty property: NSPropertyDescription?) -> Bool
  var stalenessInterval: TimeInterval
  var mergePolicy: Any
  @available(macOS 10.5, *)
  func obtainPermanentIDs(for objects: [NSManagedObject]) throws
  @available(macOS 10.5, *)
  func mergeChanges(fromContextDidSave notification: Notification)
  @available(macOS 10.11, *)
  class func mergeChanges(fromRemoteContextSave changeNotificationData: [AnyHashable : Any], into contexts: [NSManagedObjectContext])
  @available(macOS 10.12, *)
  var queryGenerationToken: NSQueryGenerationToken? { get }
  @available(macOS 10.12, *)
  func setQueryGenerationFrom(_ generation: NSQueryGenerationToken?) throws
  @available(macOS 10.12, *)
  var automaticallyMergesChangesFromParent: Bool
  @available(macOS 10.13, *)
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
