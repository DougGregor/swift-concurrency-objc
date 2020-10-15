
@available(macOS 10.13, *)
class NSPersistentHistoryTransaction : NSObject, NSCopying {
  @available(macOS 10.15, *)
  class func entityDescription(with context: NSManagedObjectContext) -> NSEntityDescription?
  @available(macOS 10.15, *)
  class var entityDescription: NSEntityDescription? { get }
  @available(macOS 10.15, *)
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
