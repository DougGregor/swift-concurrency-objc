
@available(watchOS 4.0, *)
enum NSPersistentHistoryChangeType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case insert
  case update
  case delete
}
@available(watchOS 4.0, *)
class NSPersistentHistoryChange : NSObject, NSCopying {
  @available(watchOS 6.0, *)
  class func entityDescription(with context: NSManagedObjectContext) -> NSEntityDescription?
  @available(watchOS 6.0, *)
  class var entityDescription: NSEntityDescription? { get }
  @available(watchOS 6.0, *)
  class var fetchRequest: NSFetchRequest<NSFetchRequestResult>? { get }
  var changeID: Int64 { get }
  @NSCopying var changedObjectID: NSManagedObjectID { get }
  var changeType: NSPersistentHistoryChangeType { get }
  var tombstone: [AnyHashable : Any]? { get }
  var transaction: NSPersistentHistoryTransaction? { get }
  var updatedProperties: Set<NSPropertyDescription>? { get }
}
