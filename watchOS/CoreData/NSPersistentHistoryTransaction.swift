
@available(watchOS 4.0, *)
class NSPersistentHistoryTransaction : NSObject, NSCopying {
  @available(watchOS 6.0, *)
  class func entityDescription(with context: NSManagedObjectContext) -> NSEntityDescription?
  @available(watchOS 6.0, *)
  class var entityDescription: NSEntityDescription? { get }
  @available(watchOS 6.0, *)
  class var fetchRequest: NSFetchRequest<NSFetchRequestResult>? { get }
  var timestamp: Date { get }
  var changes: [NSPersistentHistoryChange]? { get }
  var transactionNumber: Int64 { get }
  var storeID: String { get }
  var bundleID: String { get }
  var processID: String { get }
  var contextName: String? { get }
  var author: String? { get }
  var token: NSPersistentHistoryToken { get }
  func objectIDNotification() -> Notification
}
