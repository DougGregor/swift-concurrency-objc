
@available(watchOS 4.0, *)
class NSPersistentHistoryChangeRequest : NSPersistentStoreRequest {
  class func fetchHistory(after date: Date) -> Self
  class func fetchHistory(after token: NSPersistentHistoryToken?) -> Self
  class func fetchHistory(after transaction: NSPersistentHistoryTransaction?) -> Self
  @available(watchOS 6.0, *)
  class func fetchHistory(withFetch fetchRequest: NSFetchRequest<NSFetchRequestResult>) -> Self
  class func deleteHistory(before date: Date) -> Self
  class func deleteHistory(before token: NSPersistentHistoryToken?) -> Self
  class func deleteHistory(before transaction: NSPersistentHistoryTransaction?) -> Self
  var resultType: NSPersistentHistoryResultType
  var token: NSPersistentHistoryToken? { get }
  @available(watchOS 6.0, *)
  var fetchRequest: NSFetchRequest<NSFetchRequestResult>?
}
