
@available(watchOS 6.0, *)
enum NSBatchInsertRequestResultType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case statusOnly
  case objectIDs
  case count
}
@available(watchOS 2.0, *)
enum NSBatchUpdateRequestResultType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case statusOnlyResultType
  case updatedObjectIDsResultType
  case updatedObjectsCountResultType
}
@available(watchOS 2.0, *)
enum NSBatchDeleteRequestResultType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case resultTypeStatusOnly
  case resultTypeObjectIDs
  case resultTypeCount
}
@available(watchOS 4.0, *)
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
@available(watchOS 2.0, *)
class NSPersistentStoreResult : NSObject {
}
@available(watchOS 2.0, *)
class NSPersistentStoreAsynchronousResult : NSPersistentStoreResult {
  var managedObjectContext: NSManagedObjectContext { get }
  var operationError: Error? { get }
  var progress: Progress? { get }
  func cancel()
}
@available(watchOS 2.0, *)
class NSAsynchronousFetchResult<ResultType> : NSPersistentStoreAsynchronousResult where ResultType : NSFetchRequestResult {
  var fetchRequest: NSAsynchronousFetchRequest<ResultType> { get }
  var finalResult: [ResultType]? { get }
}
@available(watchOS 6.0, *)
class NSBatchInsertResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSBatchInsertRequestResultType { get }
}
@available(watchOS 2.0, *)
class NSBatchUpdateResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSBatchUpdateRequestResultType { get }
}
@available(watchOS 2.0, *)
class NSBatchDeleteResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSBatchDeleteRequestResultType { get }
}
@available(watchOS 4.0, *)
class NSPersistentHistoryResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSPersistentHistoryResultType { get }
}
extension NSPersistentCloudKitContainerEventResult {
  @available(watchOS 7.0, *)
  enum ResultType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case events
    case countEvents
  }
}
@available(watchOS 7.0, *)
class NSPersistentCloudKitContainerEventResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSPersistentCloudKitContainerEventResult.ResultType { get }
}
