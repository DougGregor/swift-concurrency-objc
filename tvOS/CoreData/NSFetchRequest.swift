
struct NSFetchRequestResultType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var managedObjectResultType: NSFetchRequestResultType { get }
  static var managedObjectIDResultType: NSFetchRequestResultType { get }
  @available(tvOS 3.0, *)
  static var dictionaryResultType: NSFetchRequestResultType { get }
  @available(tvOS 3.0, *)
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
@available(tvOS 3.0, *)
class NSFetchRequest<ResultType> : NSPersistentStoreRequest, NSCoding where ResultType : NSFetchRequestResult {
  @available(tvOS 4.0, *)
  convenience init(entityName: String)
  @available(tvOS 10.0, *)
  func execute() throws -> [ResultType]
  var entity: NSEntityDescription?
  @available(tvOS 4.0, *)
  var entityName: String? { get }
  var predicate: NSPredicate?
  var sortDescriptors: [NSSortDescriptor]?
  var fetchLimit: Int
  @available(tvOS 3.0, *)
  var resultType: NSFetchRequestResultType
  @available(tvOS 3.0, *)
  var includesSubentities: Bool
  @available(tvOS 3.0, *)
  var includesPropertyValues: Bool
  @available(tvOS 3.0, *)
  var returnsObjectsAsFaults: Bool
  @available(tvOS 3.0, *)
  var relationshipKeyPathsForPrefetching: [String]?
  @available(tvOS 3.0, *)
  var includesPendingChanges: Bool
  @available(tvOS 3.0, *)
  var returnsDistinctResults: Bool
  @available(tvOS 3.0, *)
  var propertiesToFetch: [Any]?
  @available(tvOS 3.0, *)
  var fetchOffset: Int
  @available(tvOS 3.0, *)
  var fetchBatchSize: Int
  @available(tvOS 5.0, *)
  var shouldRefreshRefetchedObjects: Bool
  @available(tvOS 5.0, *)
  var propertiesToGroupBy: [Any]?
  @available(tvOS 5.0, *)
  var havingPredicate: NSPredicate?
}
typealias NSPersistentStoreAsynchronousFetchResultCompletionBlock = (NSAsynchronousFetchResult<NSFetchRequestResult>) -> Void
@available(tvOS 8.0, *)
class NSAsynchronousFetchRequest<ResultType> : NSPersistentStoreRequest where ResultType : NSFetchRequestResult {
  var fetchRequest: NSFetchRequest<ResultType> { get }
  var completionBlock: NSPersistentStoreAsynchronousFetchResultCompletionBlock? { get }
  var estimatedResultCount: Int
  init(fetchRequest request: NSFetchRequest<ResultType>, completionBlock blk: ((NSAsynchronousFetchResult<ResultType>) -> Void)? = nil)
}
