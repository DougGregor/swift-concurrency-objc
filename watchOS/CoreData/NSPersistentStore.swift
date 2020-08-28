
@available(watchOS 2.0, *)
class NSPersistentStore : NSObject {
  class func metadataForPersistentStore(with url: URL) throws -> [String : Any]
  class func setMetadata(_ metadata: [String : Any]?, forPersistentStoreAt url: URL) throws
  @available(watchOS 2.0, *)
  class func migrationManagerClass() -> AnyClass
  init(persistentStoreCoordinator root: NSPersistentStoreCoordinator?, configurationName name: String?, at url: URL, options: [AnyHashable : Any]? = nil)
  func loadMetadata() throws
  weak var persistentStoreCoordinator: @sil_weak NSPersistentStoreCoordinator? { get }
  var configurationName: String { get }
  var options: [AnyHashable : Any]? { get }
  var url: URL?
  var identifier: String!
  var type: String { get }
  var isReadOnly: Bool
  var metadata: [String : Any]!
  func didAdd(to coordinator: NSPersistentStoreCoordinator)
  func willRemove(from coordinator: NSPersistentStoreCoordinator?)
}
