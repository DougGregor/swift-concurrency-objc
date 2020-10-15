
struct NSFetchRequestResultType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var managedObjectResultType: NSFetchRequestResultType { get }
  static var managedObjectIDResultType: NSFetchRequestResultType { get }
  @available(macOS 10.6, *)
  static var dictionaryResultType: NSFetchRequestResultType { get }
  @available(macOS 10.6, *)
  static var countResultType: NSFetchRequestResultType { get }
}
protocol NSFetchRequestResult : NSObjectProtocol {
}
extension NSNumber : NSFetchRequestResult {
}
extension NSDictionary : NSFetchRequestResult {
}
extension NSManagedObject : NSFetchRequestResult {
}
extension NSManagedObjectID : NSFetchRequestResult {
}
@available(macOS 10.4, *)
class NSFetchRequest<ResultType> : NSPersistentStoreRequest, NSCoding where ResultType : NSFetchRequestResult {
  @available(macOS 10.7, *)
  convenience init(entityName: String)
  @available(macOS 10.12, *)
  func execute() throws -> [ResultType]
  var entity: NSEntityDescription?
  @available(macOS 10.7, *)
  var entityName: String? { get }
  var predicate: NSPredicate?
  var sortDescriptors: [NSSortDescriptor]?
  var fetchLimit: Int
  @available(macOS 10.5, *)
  var resultType: NSFetchRequestResultType
  @available(macOS 10.5, *)
  var includesSubentities: Bool
  @available(macOS 10.5, *)
  var includesPropertyValues: Bool
  @available(macOS 10.5, *)
  var returnsObjectsAsFaults: Bool
  @available(macOS 10.5, *)
  var relationshipKeyPathsForPrefetching: [String]?
  @available(macOS 10.6, *)
  var includesPendingChanges: Bool
  @available(macOS 10.6, *)
  var returnsDistinctResults: Bool
  @available(macOS 10.6, *)
  var propertiesToFetch: [Any]?
  @available(macOS 10.6, *)
  var fetchOffset: Int
  @available(macOS 10.6, *)
  var fetchBatchSize: Int
  @available(macOS 10.7, *)
  var shouldRefreshRefetchedObjects: Bool
  @available(macOS 10.7, *)
  var propertiesToGroupBy: [Any]?
  @available(macOS 10.7, *)
  var havingPredicate: NSPredicate?
}
typealias NSPersistentStoreAsynchronousFetchResultCompletionBlock = (NSAsynchronousFetchResult<NSFetchRequestResult>) -> Void
@available(macOS 10.10, *)
class NSAsynchronousFetchRequest<ResultType> : NSPersistentStoreRequest where ResultType : NSFetchRequestResult {
  var fetchRequest: NSFetchRequest<ResultType> { get }
  var completionBlock: NSPersistentStoreAsynchronousFetchResultCompletionBlock? { get }
  var estimatedResultCount: Int
  init(fetchRequest request: NSFetchRequest<ResultType>, completionBlock blk: ((NSAsynchronousFetchResult<ResultType>) -> Void)? = nil)
}
