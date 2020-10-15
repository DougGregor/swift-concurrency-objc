
@available(iOS 5.0, *)
class UIManagedDocument : UIDocument {
  class var persistentStoreName: String { get }
  var persistentStoreOptions: [AnyHashable : Any]?
  var modelConfiguration: String?
  func configurePersistentStoreCoordinator(for storeURL: URL, ofType fileType: String, modelConfiguration configuration: String?, storeOptions: [AnyHashable : Any]? = nil) throws
  func persistentStoreType(forFileType fileType: String) -> String
  func readAdditionalContent(from absoluteURL: URL) throws
  func additionalContent(for absoluteURL: URL) throws -> Any
  func writeAdditionalContent(_ content: Any, to absoluteURL: URL, originalContentsURL absoluteOriginalContentsURL: URL?) throws
}
