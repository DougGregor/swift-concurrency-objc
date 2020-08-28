
@available(iOS 5.0, *)
class NSIncrementalStoreNode : NSObject {
  init(objectID: NSManagedObjectID, withValues values: [String : Any], version: UInt64)
  func update(withValues values: [String : Any], version: UInt64)
  var objectID: NSManagedObjectID { get }
  var version: UInt64 { get }
  func value(for prop: NSPropertyDescription) -> Any?
}
