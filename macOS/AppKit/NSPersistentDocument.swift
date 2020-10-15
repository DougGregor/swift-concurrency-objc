
class NSPersistentDocument : NSDocument {
  var managedObjectContext: NSManagedObjectContext?
  var managedObjectModel: NSManagedObjectModel? { get }
  @available(macOS 10.5, *)
  func configurePersistentStoreCoordinator(for url: URL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [String : Any]? = nil) throws
  func persistentStoreType(forFileType fileType: String) -> String
}
extension NSPersistentDocument {
}
