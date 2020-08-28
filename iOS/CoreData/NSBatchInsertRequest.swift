
@available(iOS 13.0, *)
class NSBatchInsertRequest : NSPersistentStoreRequest {
  var entityName: String { get }
  var entity: NSEntityDescription? { get }
  var objectsToInsert: [[String : Any]]?
  @available(iOS 14.0, *)
  var dictionaryHandler: ((NSMutableDictionary) -> Bool)?
  @available(iOS 14.0, *)
  var managedObjectHandler: ((NSManagedObject) -> Bool)?
  var resultType: NSBatchInsertRequestResultType
  init(entityName: String, objects dictionaries: [[String : Any]])
  init(entity: NSEntityDescription, objects dictionaries: [[String : Any]])
  @available(iOS 14.0, *)
  convenience init(entity: NSEntityDescription, dictionaryHandler handler: @escaping (NSMutableDictionary) -> Bool)
  @available(iOS 14.0, *)
  convenience init(entity: NSEntityDescription, managedObjectHandler handler: @escaping (NSManagedObject) -> Bool)
  @available(iOS 14.0, *)
  convenience init(entityName: String, dictionaryHandler handler: @escaping (NSMutableDictionary) -> Bool)
  @available(iOS 14.0, *)
  convenience init(entityName: String, managedObjectHandler handler: @escaping (NSManagedObject) -> Bool)
}
