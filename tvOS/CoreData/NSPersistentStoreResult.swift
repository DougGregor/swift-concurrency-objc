
@available(tvOS 13.0, *)
enum NSBatchInsertRequestResultType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case statusOnly
  case objectIDs
  case count
}
@available(tvOS 8.0, *)
enum NSBatchUpdateRequestResultType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case statusOnlyResultType
  case updatedObjectIDsResultType
  case updatedObjectsCountResultType
}
@available(tvOS 9.0, *)
enum NSBatchDeleteRequestResultType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case resultTypeStatusOnly
  case resultTypeObjectIDs
  case resultTypeCount
}
@available(tvOS 11.0, *)
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
@available(tvOS 8.0, *)
class NSPersistentStoreResult : NSObject {
}
@available(tvOS 8.0, *)
class NSPersistentStoreAsynchronousResult : NSPersistentStoreResult {
  var managedObjectContext: NSManagedObjectContext { get }
  var operationError: Error? { get }
  var progress: Progress? { get }
  func cancel()
}
@available(tvOS 8.0, *)
class NSAsynchronousFetchResult<ResultType> : NSPersistentStoreAsynchronousResult where ResultType : NSFetchRequestResult {
  var fetchRequest: NSAsynchronousFetchRequest<ResultType> { get }
  var finalResult: [ResultType]? { get }
}
@available(tvOS 13.0, *)
class NSBatchInsertResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSBatchInsertRequestResultType { get }
}
@available(tvOS 8.0, *)
class NSBatchUpdateResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSBatchUpdateRequestResultType { get }
}
@available(tvOS 9.0, *)
class NSBatchDeleteResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSBatchDeleteRequestResultType { get }
}
@available(tvOS 11.0, *)
class NSPersistentHistoryResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSPersistentHistoryResultType { get }
}
extension NSPersistentCloudKitContainerEventResult {
  @available(tvOS 14.0, *)
  enum ResultType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case events
    case countEvents
  }
}
@available(tvOS 14.0, *)
class NSPersistentCloudKitContainerEventResult : NSPersistentStoreResult {
  var result: Any? { get }
  var resultType: NSPersistentCloudKitContainerEventResult.ResultType { get }
}
