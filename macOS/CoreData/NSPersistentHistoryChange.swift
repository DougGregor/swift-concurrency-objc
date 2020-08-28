
@available(macOS 10.13, *)
enum NSPersistentHistoryChangeType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case insert
  case update
  case delete
}
@available(macOS 10.13, *)
class NSPersistentHistoryChange : NSObject, NSCopying {
  @available(macOS 10.15, *)
  class func entityDescription(with context: NSManagedObjectContext) -> NSEntityDescription?
  @available(macOS 10.15, *)
  class var entityDescription: NSEntityDescription? { get }
  @available(macOS 10.15, *)
  class var fetchRequest: NSFetchRequest<NSFetchRequestResult>? { get }
  var changeID: Int64 { get }
  @NSCopying var changedObjectID: NSManagedObjectID { get }
  var changeType: NSPersistentHistoryChangeType { get }
  var tombstone: [AnyHashable : Any]? { get }
  var transaction: NSPersistentHistoryTransaction? { get }
  var updatedProperties: Set<NSPropertyDescription>? { get }
}
