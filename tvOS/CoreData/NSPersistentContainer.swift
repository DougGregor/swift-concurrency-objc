
@available(tvOS 10.0, *)
class NSPersistentContainer : NSObject {
  class func defaultDirectoryURL() -> URL
  var name: String { get }
  var viewContext: NSManagedObjectContext { get }
  var managedObjectModel: NSManagedObjectModel { get }
  var persistentStoreCoordinator: NSPersistentStoreCoordinator { get }
  var persistentStoreDescriptions: [NSPersistentStoreDescription]
  convenience init(name: String)
  init(name: String, managedObjectModel model: NSManagedObjectModel)
  func loadPersistentStores(completionHandler block: @escaping (NSPersistentStoreDescription, Error?) -> Void)
  func loadPersistentStores() async throws -> NSPersistentStoreDescription
  func newBackgroundContext() -> NSManagedObjectContext
  func performBackgroundTask(_ block: @escaping (NSManagedObjectContext) -> Void)
}
