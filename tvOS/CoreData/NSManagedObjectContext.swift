
extension NSNotification.Name {
  @available(tvOS 3.0, *)
  static let NSManagedObjectContextWillSave: NSNotification.Name
  @available(tvOS 3.0, *)
  static let NSManagedObjectContextDidSave: NSNotification.Name
  @available(tvOS 3.0, *)
  static let NSManagedObjectContextObjectsDidChange: NSNotification.Name
  @available(tvOS 10.2, *)
  static let NSManagedObjectContextDidSaveObjectIDs: NSNotification.Name
  @available(tvOS 10.2, *)
  static let NSManagedObjectContextDidMergeChangesObjectIDs: NSNotification.Name
}
@available(tvOS 3.0, *)
let NSInsertedObjectsKey: String
@available(tvOS 3.0, *)
let NSUpdatedObjectsKey: String
@available(tvOS 3.0, *)
let NSDeletedObjectsKey: String
@available(tvOS 3.0, *)
let NSRefreshedObjectsKey: String
@available(tvOS 3.0, *)
let NSInvalidatedObjectsKey: String
@available(tvOS 10.0, *)
let NSManagedObjectContextQueryGenerationKey: String
@available(tvOS 3.0, *)
let NSInvalidatedAllObjectsKey: String
@available(tvOS 10.2, *)
let NSInsertedObjectIDsKey: String
@available(tvOS 10.2, *)
let NSUpdatedObjectIDsKey: String
@available(tvOS 10.2, *)
let NSDeletedObjectIDsKey: String
@available(tvOS 10.2, *)
let NSRefreshedObjectIDsKey: String
@available(tvOS 10.2, *)
let NSInvalidatedObjectIDsKey: String
@available(tvOS 5.0, *)
enum NSManagedObjectContextConcurrencyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(tvOS, introduced: 3.0, deprecated: 9.0, message: "Use another NSManagedObjectContextConcurrencyType")
  case confinementConcurrencyType
  case privateQueueConcurrencyType
  case mainQueueConcurrencyType
}
@available(tvOS 3.0, *)
class NSManagedObjectContext : NSObject, NSCoding {
  @available(tvOS 5.0, *)
  init(concurrencyType ct: NSManagedObjectContextConcurrencyType)
  @available(tvOS 5.0, *)
  func perform(_ block: @escaping () -> Void)
  @available(tvOS 5.0, *)
  func performAndWait(_ block: () -> Void)
  var persistentStoreCoordinator: NSPersistentStoreCoordinator?
  @available(tvOS 5.0, *)
  var parent: NSManagedObjectContext?
  @available(tvOS 8.0, *)
  var name: String?
  var undoManager: UndoManager?
  var hasChanges: Bool { get }
  @available(tvOS 5.0, *)
  var userInfo: NSMutableDictionary { get }
  @available(tvOS 5.0, *)
  var concurrencyType: NSManagedObjectContextConcurrencyType { get }
  func registeredObject(for objectID: NSManagedObjectID) -> NSManagedObject?
  func object(with objectID: NSManagedObjectID) -> NSManagedObject
  @available(tvOS 3.0, *)
  func existingObject(with objectID: NSManagedObjectID) throws -> NSManagedObject
  func fetch(_ request: NSFetchRequest<NSFetchRequestResult>) throws -> [Any]
  @available(tvOS 3.0, *)
  func count(for request: NSFetchRequest<NSFetchRequestResult>) throws -> Int
  @available(tvOS 8.0, *)
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
  @available(tvOS 8.3, *)
  func refreshAllObjects()
  var propagatesDeletesAtEndOfEvent: Bool
  var retainsRegisteredObjects: Bool
  @available(tvOS 9.0, *)
  var shouldDeleteInaccessibleFaults: Bool
  @available(tvOS 9.0, *)
  func shouldHandleInaccessibleFault(_ fault: NSManagedObject, for oid: NSManagedObjectID, triggeredByProperty property: NSPropertyDescription?) -> Bool
  var stalenessInterval: TimeInterval
  var mergePolicy: Any
  @available(tvOS 3.0, *)
  func obtainPermanentIDs(for objects: [NSManagedObject]) throws
  @available(tvOS 3.0, *)
  func mergeChanges(fromContextDidSave notification: Notification)
  @available(tvOS 9.0, *)
  class func mergeChanges(fromRemoteContextSave changeNotificationData: [AnyHashable : Any], into contexts: [NSManagedObjectContext])
  @available(tvOS 10.0, *)
  var queryGenerationToken: NSQueryGenerationToken? { get }
  @available(tvOS 10.0, *)
  func setQueryGenerationFrom(_ generation: NSQueryGenerationToken?) throws
  @available(tvOS 10.0, *)
  var automaticallyMergesChangesFromParent: Bool
  @available(tvOS 11.0, *)
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
