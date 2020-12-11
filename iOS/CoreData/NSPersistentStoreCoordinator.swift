
@available(iOS 3.0, *)
let NSSQLiteStoreType: String
@available(iOS 3.0, *)
let NSBinaryStoreType: String
@available(iOS 3.0, *)
let NSInMemoryStoreType: String
@available(iOS 3.0, *)
let NSStoreTypeKey: String
@available(iOS 3.0, *)
let NSStoreUUIDKey: String
extension NSNotification.Name {
  @available(iOS 7.0, *)
  static let NSPersistentStoreCoordinatorStoresWillChange: NSNotification.Name
  @available(iOS 3.0, *)
  static let NSPersistentStoreCoordinatorStoresDidChange: NSNotification.Name
  @available(iOS 3.0, *)
  static let NSPersistentStoreCoordinatorWillRemoveStore: NSNotification.Name
  @available(iOS 12.0, *)
  static let NSPersistentStoreRemoteChange: NSNotification.Name
  @available(iOS, introduced: 5.0, deprecated: 10.0, message: "Please see the release notes and Core Data documentation.")
  static let NSPersistentStoreDidImportUbiquitousContentChanges: NSNotification.Name
}
@available(iOS 3.0, *)
let NSAddedPersistentStoresKey: String
@available(iOS 3.0, *)
let NSRemovedPersistentStoresKey: String
@available(iOS 3.0, *)
let NSUUIDChangedPersistentStoresKey: String
@available(iOS 3.0, *)
let NSReadOnlyPersistentStoreOption: String
@available(iOS 3.0, *)
let NSPersistentStoreTimeoutOption: String
@available(iOS 3.0, *)
let NSSQLitePragmasOption: String
@available(iOS 3.0, *)
let NSSQLiteAnalyzeOption: String
@available(iOS 3.0, *)
let NSSQLiteManualVacuumOption: String
@available(iOS 3.0, *)
let NSIgnorePersistentStoreVersioningOption: String
@available(iOS 3.0, *)
let NSMigratePersistentStoresAutomaticallyOption: String
@available(iOS 3.0, *)
let NSInferMappingModelAutomaticallyOption: String
@available(iOS 3.0, *)
let NSStoreModelVersionHashesKey: String
@available(iOS 3.0, *)
let NSStoreModelVersionIdentifiersKey: String
@available(iOS 3.0, *)
let NSPersistentStoreOSCompatibility: String
@available(iOS 10.0, *)
let NSPersistentStoreConnectionPoolMaxSizeKey: String
@available(iOS 11.0, *)
let NSCoreDataCoreSpotlightExporter: String
@available(iOS 6.0, *)
let NSPersistentStoreForceDestroyOption: String
@available(iOS 5.0, *)
let NSPersistentStoreFileProtectionKey: String
@available(iOS 11.0, *)
let NSPersistentHistoryTrackingKey: String
@available(iOS 11.0, *)
let NSBinaryStoreSecureDecodingClasses: String
@available(iOS 11.0, *)
let NSBinaryStoreInsecureDecodingCompatibilityOption: String
@available(iOS 13.0, *)
let NSPersistentStoreRemoteChangeNotificationPostOptionKey: String
@available(iOS 12.0, *)
let NSPersistentStoreURLKey: String
@available(iOS 12.0, *)
let NSPersistentHistoryTokenKey: String
@available(iOS 3.0, *)
class NSPersistentStoreCoordinator : NSObject, NSLocking {
  init(managedObjectModel model: NSManagedObjectModel)
  var managedObjectModel: NSManagedObjectModel { get }
  var persistentStores: [NSPersistentStore] { get }
  @available(iOS 8.0, *)
  var name: String?
  func persistentStore(for URL: URL) -> NSPersistentStore?
  func url(for store: NSPersistentStore) -> URL
  @available(iOS 3.0, *)
  func setURL(_ url: URL, for store: NSPersistentStore) -> Bool
  func addPersistentStore(ofType storeType: String, configurationName configuration: String?, at storeURL: URL?, options: [AnyHashable : Any]? = nil) throws -> NSPersistentStore
  @available(iOS 10.0, *)
  func addPersistentStore(with storeDescription: NSPersistentStoreDescription, completionHandler block: @escaping (NSPersistentStoreDescription, Error?) -> Void)
  @available(iOS 10.0, *)
  func addPersistentStore(with storeDescription: NSPersistentStoreDescription) async throws -> NSPersistentStoreDescription
  func remove(_ store: NSPersistentStore) throws
  func setMetadata(_ metadata: [String : Any]?, for store: NSPersistentStore)
  func metadata(for store: NSPersistentStore) -> [String : Any]
  func managedObjectID(forURIRepresentation url: URL) -> NSManagedObjectID?
  @available(iOS 5.0, *)
  func execute(_ request: NSPersistentStoreRequest, with context: NSManagedObjectContext) throws -> Any
  @available(iOS 3.0, *)
  class var registeredStoreTypes: [String : NSValue] { get }
  @available(iOS 3.0, *)
  class func registerStoreClass(_ storeClass: AnyClass?, forStoreType storeType: String)
  @available(iOS 7.0, *)
  class func metadataForPersistentStore(ofType storeType: String, at url: URL, options: [AnyHashable : Any]? = nil) throws -> [String : Any]
  @available(iOS 7.0, *)
  class func setMetadata(_ metadata: [String : Any]?, forPersistentStoreOfType storeType: String, at url: URL, options: [AnyHashable : Any]? = nil) throws
  func migratePersistentStore(_ store: NSPersistentStore, to URL: URL, options: [AnyHashable : Any]? = nil, withType storeType: String) throws -> NSPersistentStore
  @available(iOS 9.0, *)
  func destroyPersistentStore(at url: URL, ofType storeType: String, options: [AnyHashable : Any]? = nil) throws
  @available(iOS 9.0, *)
  func replacePersistentStore(at destinationURL: URL, destinationOptions: [AnyHashable : Any]? = nil, withPersistentStoreFrom sourceURL: URL, sourceOptions: [AnyHashable : Any]? = nil, ofType storeType: String) throws
  @available(iOS 8.0, *)
  func perform(_ block: @escaping () -> Void)
  @available(iOS 8.0, *)
  func performAndWait(_ block: () -> Void)
  @available(iOS 12.0, *)
  func currentPersistentHistoryToken(fromStores stores: [Any]?) -> NSPersistentHistoryToken?
  @available(iOS, introduced: 3.0, deprecated: 8.0, message: "Use -performBlock: instead")
  func tryLock() -> Bool
  @available(iOS, introduced: 3.0, deprecated: 9.0, message: "Use -metadataForPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func metadataForPersistentStore(ofType storeType: String?, at url: URL) throws -> [String : Any]
  @available(iOS, introduced: 3.0, deprecated: 9.0, message: "Use  -setMetadata:forPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func setMetadata(_ metadata: [String : Any]?, forPersistentStoreOfType storeType: String?, at url: URL) throws
  @available(iOS, introduced: 5.0, deprecated: 10.0, message: "Please see the release notes and Core Data documentation.")
  class func removeUbiquitousContentAndPersistentStore(at storeURL: URL, options: [AnyHashable : Any]? = nil) throws
}
@available(iOS, introduced: 7.0, deprecated: 10.0, message: "Please see the release notes and Core Data documentation.")
enum NSPersistentStoreUbiquitousTransitionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case accountAdded
  case accountRemoved
  case contentRemoved
  case initialImportCompleted
}
@available(iOS, introduced: 5.0, deprecated: 10.0, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreUbiquitousContentNameKey: String
@available(iOS, introduced: 5.0, deprecated: 10.0, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreUbiquitousContentURLKey: String
@available(iOS, introduced: 7.0, deprecated: 10.0, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreUbiquitousTransitionTypeKey: String
@available(iOS, introduced: 7.0, deprecated: 10.0, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreUbiquitousPeerTokenOption: String
@available(iOS, introduced: 7.0, deprecated: 10.0, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreRemoveUbiquitousMetadataOption: String
@available(iOS, introduced: 7.0, deprecated: 10.0, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreUbiquitousContainerIdentifierKey: String
@available(iOS, introduced: 7.0, deprecated: 10.0, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreRebuildFromUbiquitousContentOption: String
