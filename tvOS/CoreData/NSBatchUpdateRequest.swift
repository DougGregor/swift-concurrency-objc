
@available(tvOS 8.0, *)
class NSBatchUpdateRequest : NSPersistentStoreRequest {
  init(entityName: String)
  init(entity: NSEntityDescription)
  var entityName: String { get }
  var entity: NSEntityDescription { get }
  var predicate: NSPredicate?
  var includesSubentities: Bool
  var resultType: NSBatchUpdateRequestResultType
  var propertiesToUpdate: [AnyHashable : Any]?
}
