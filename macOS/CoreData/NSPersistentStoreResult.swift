
@available(macOS 10.15, *)
enum NSBatchInsertRequestResultType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case statusOnly
  case objectIDs
  case count
}
@available(macOS 10.10, *)
enum NSBatchUpdateRequestResultType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case statusOnlyResultType
  case updatedObjectIDsResultType
  case updatedObjectsCountResultType
}
@available(macOS 10.11, *)
enum NSBatchDeleteRequestResultType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case resultTypeStatusOnly
  case resultTypeObjectIDs
  case resultTypeCount
}
@available(macOS 10.13, *)
enum NSPersistentHistoryResultType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case statusOnly
  case objectIDs
  case count
  case transactionsOnly
  case changesOnly
  case transactionsAndChanges
}
@available(macOS 10.10, *)
class NSPersistentStoreResult : NSObject {
}
@available(macOS 10.10, *)
class NSPersistentStoreAsynchronousResult : NSPersistentStoreResult {
  var managedObjectContext: NSManagedObjectContext { get }
  var operationError: Error? { get }
  var progress: Progress? { get }
  func cancel()
}
@available(macOS 10.10, *)
class NSAsynchronousFetchResult<ResultType> : NSPersistentStoreAsynchronousResult where ResultType : NSFetchRequestResult {
  var fetchRequest: NSAsynchronousFetchRequest<ResultType> { get }
  var finalResult: [ResultType]? { get }
}
@available(macOS 10.15, *)
class NSBatchInsertResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSBatchInsertRequestResultType { get }
}
@available(macOS 10.10, *)
class NSBatchUpdateResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSBatchUpdateRequestResultType { get }
}
@available(macOS 10.11, *)
class NSBatchDeleteResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSBatchDeleteRequestResultType { get }
}
@available(macOS 10.13, *)
class NSPersistentHistoryResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSPersistentHistoryResultType { get }
}
extension NSPersistentCloudKitContainerEventResult {
  @available(macOS 11.0, *)
  enum ResultType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case events
    case countEvents
  }
}
@available(macOS 11.0, *)
class NSPersistentCloudKitContainerEventResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSPersistentCloudKitContainerEventResult.ResultType { get }
}
