
@available(watchOS 2.0, *)
let NSSQLiteStoreType: String
@available(watchOS 2.0, *)
let NSBinaryStoreType: String
@available(watchOS 2.0, *)
let NSInMemoryStoreType: String
@available(watchOS 2.0, *)
let NSStoreTypeKey: String
@available(watchOS 2.0, *)
let NSStoreUUIDKey: String
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  static let NSPersistentStoreCoordinatorStoresWillChange: NSNotification.Name
  @available(watchOS 2.0, *)
  static let NSPersistentStoreCoordinatorStoresDidChange: NSNotification.Name
  @available(watchOS 2.0, *)
  static let NSPersistentStoreCoordinatorWillRemoveStore: NSNotification.Name
  @available(watchOS 5.0, *)
  static let NSPersistentStoreRemoteChange: NSNotification.Name
}
@available(watchOS 2.0, *)
let NSAddedPersistentStoresKey: String
@available(watchOS 2.0, *)
let NSRemovedPersistentStoresKey: String
@available(watchOS 2.0, *)
let NSUUIDChangedPersistentStoresKey: String
@available(watchOS 2.0, *)
let NSReadOnlyPersistentStoreOption: String
@available(watchOS 2.0, *)
let NSPersistentStoreTimeoutOption: String
@available(watchOS 2.0, *)
let NSSQLitePragmasOption: String
@available(watchOS 2.0, *)
let NSSQLiteAnalyzeOption: String
@available(watchOS 2.0, *)
let NSSQLiteManualVacuumOption: String
@available(watchOS 2.0, *)
let NSIgnorePersistentStoreVersioningOption: String
@available(watchOS 2.0, *)
let NSMigratePersistentStoresAutomaticallyOption: String
@available(watchOS 2.0, *)
let NSInferMappingModelAutomaticallyOption: String
@available(watchOS 2.0, *)
let NSStoreModelVersionHashesKey: String
@available(watchOS 2.0, *)
let NSStoreModelVersionIdentifiersKey: String
@available(watchOS 2.0, *)
let NSPersistentStoreOSCompatibility: String
@available(watchOS 3.0, *)
let NSPersistentStoreConnectionPoolMaxSizeKey: String
@available(watchOS 2.0, *)
let NSPersistentStoreForceDestroyOption: String
@available(watchOS 2.0, *)
let NSPersistentStoreFileProtectionKey: String
@available(watchOS 4.0, *)
let NSPersistentHistoryTrackingKey: String
@available(watchOS 4.0, *)
let NSBinaryStoreSecureDecodingClasses: String
@available(watchOS 4.0, *)
let NSBinaryStoreInsecureDecodingCompatibilityOption: String
@available(watchOS 6.0, *)
let NSPersistentStoreRemoteChangeNotificationPostOptionKey: String
@available(watchOS 5.0, *)
let NSPersistentStoreURLKey: String
@available(watchOS 5.0, *)
let NSPersistentHistoryTokenKey: String
@available(watchOS 2.0, *)
class NSPersistentStoreCoordinator : NSObject {
  init(managedObjectModel model: NSManagedObjectModel)
  var managedObjectModel: NSManagedObjectModel { get }
  var persistentStores: [NSPersistentStore] { get }
  @available(watchOS 2.0, *)
  var name: String?
  func persistentStore(for URL: URL) -> NSPersistentStore?
  func url(for store: NSPersistentStore) -> URL
  @available(watchOS 2.0, *)
  func setURL(_ url: URL, for store: NSPersistentStore) -> Bool
  func addPersistentStore(ofType storeType: String, configurationName configuration: String?, at storeURL: URL?, options: [AnyHashable : Any]? = nil) throws -> NSPersistentStore
  @available(watchOS 3.0, *)
  func addPersistentStore(with storeDescription: NSPersistentStoreDescription, completionHandler block: @escaping (NSPersistentStoreDescription, Error?) -> Void)
  @available(watchOS 3.0, *)
  func addPersistentStore(with storeDescription: NSPersistentStoreDescription) async throws -> NSPersistentStoreDescription
  func remove(_ store: NSPersistentStore) throws
  func setMetadata(_ metadata: [String : Any]?, for store: NSPersistentStore)
  func metadata(for store: NSPersistentStore) -> [String : Any]
  func managedObjectID(forURIRepresentation url: URL) -> NSManagedObjectID?
  @available(watchOS 2.0, *)
  func execute(_ request: NSPersistentStoreRequest, with context: NSManagedObjectContext) throws -> Any
  @available(watchOS 2.0, *)
  class var registeredStoreTypes: [String : NSValue] { get }
  @available(watchOS 2.0, *)
  class func registerStoreClass(_ storeClass: AnyClass?, forStoreType storeType: String)
  @available(watchOS 2.0, *)
  class func metadataForPersistentStore(ofType storeType: String, at url: URL, options: [AnyHashable : Any]? = nil) throws -> [String : Any]
  @available(watchOS 2.0, *)
  class func setMetadata(_ metadata: [String : Any]?, forPersistentStoreOfType storeType: String, at url: URL, options: [AnyHashable : Any]? = nil) throws
  func migratePersistentStore(_ store: NSPersistentStore, to URL: URL, options: [AnyHashable : Any]? = nil, withType storeType: String) throws -> NSPersistentStore
  @available(watchOS 2.0, *)
  func destroyPersistentStore(at url: URL, ofType storeType: String, options: [AnyHashable : Any]? = nil) throws
  @available(watchOS 2.0, *)
  func replacePersistentStore(at destinationURL: URL, destinationOptions: [AnyHashable : Any]? = nil, withPersistentStoreFrom sourceURL: URL, sourceOptions: [AnyHashable : Any]? = nil, ofType storeType: String) throws
  @available(watchOS 2.0, *)
  func perform(_ block: @escaping () -> Void)
  @available(watchOS 2.0, *)
  func performAndWait(_ block: () -> Void)
  @available(watchOS 5.0, *)
  func currentPersistentHistoryToken(fromStores stores: [Any]?) -> NSPersistentHistoryToken?
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -metadataForPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func metadataForPersistentStore(ofType storeType: String?, at url: URL) throws -> [String : Any]
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use  -setMetadata:forPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func setMetadata(_ metadata: [String : Any]?, forPersistentStoreOfType storeType: String?, at url: URL) throws
}
