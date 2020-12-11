
@available(macOS 10.4, *)
let NSSQLiteStoreType: String
@available(macOS 10.4, *)
let NSXMLStoreType: String
@available(macOS 10.4, *)
let NSBinaryStoreType: String
@available(macOS 10.4, *)
let NSInMemoryStoreType: String
@available(macOS 10.4, *)
let NSStoreTypeKey: String
@available(macOS 10.4, *)
let NSStoreUUIDKey: String
extension NSNotification.Name {
  @available(macOS 10.9, *)
  static let NSPersistentStoreCoordinatorStoresWillChange: NSNotification.Name
  @available(macOS 10.4, *)
  static let NSPersistentStoreCoordinatorStoresDidChange: NSNotification.Name
  @available(macOS 10.5, *)
  static let NSPersistentStoreCoordinatorWillRemoveStore: NSNotification.Name
  @available(macOS 10.14, *)
  static let NSPersistentStoreRemoteChange: NSNotification.Name
  @available(macOS, introduced: 10.7, deprecated: 10.12, message: "Please see the release notes and Core Data documentation.")
  static let NSPersistentStoreDidImportUbiquitousContentChanges: NSNotification.Name
}
@available(macOS 10.4, *)
let NSAddedPersistentStoresKey: String
@available(macOS 10.4, *)
let NSRemovedPersistentStoresKey: String
@available(macOS 10.4, *)
let NSUUIDChangedPersistentStoresKey: String
@available(macOS 10.4, *)
let NSReadOnlyPersistentStoreOption: String
@available(macOS 10.4, *)
let NSValidateXMLStoreOption: String
@available(macOS 10.5, *)
let NSPersistentStoreTimeoutOption: String
@available(macOS 10.5, *)
let NSSQLitePragmasOption: String
@available(macOS 10.5, *)
let NSSQLiteAnalyzeOption: String
@available(macOS 10.6, *)
let NSSQLiteManualVacuumOption: String
@available(macOS 10.5, *)
let NSIgnorePersistentStoreVersioningOption: String
@available(macOS 10.5, *)
let NSMigratePersistentStoresAutomaticallyOption: String
@available(macOS 10.6, *)
let NSInferMappingModelAutomaticallyOption: String
@available(macOS 10.5, *)
let NSStoreModelVersionHashesKey: String
@available(macOS 10.5, *)
let NSStoreModelVersionIdentifiersKey: String
@available(macOS 10.5, *)
let NSPersistentStoreOSCompatibility: String
@available(macOS 10.12, *)
let NSPersistentStoreConnectionPoolMaxSizeKey: String
@available(macOS 10.13, *)
let NSCoreDataCoreSpotlightExporter: String
@available(macOS, introduced: 10.6, deprecated: 10.13, message: "Spotlight integration is deprecated. Use CoreSpotlight integration instead.")
let NSXMLExternalRecordType: String
@available(macOS, introduced: 10.6, deprecated: 10.13, message: "Spotlight integration is deprecated. Use CoreSpotlight integration instead.")
let NSBinaryExternalRecordType: String
@available(macOS, introduced: 10.6, deprecated: 10.13, message: "Spotlight integration is deprecated. Use CoreSpotlight integration instead.")
let NSExternalRecordsFileFormatOption: String
@available(macOS, introduced: 10.6, deprecated: 10.13, message: "Spotlight integration is deprecated. Use CoreSpotlight integration instead.")
let NSExternalRecordsDirectoryOption: String
@available(macOS, introduced: 10.6, deprecated: 10.13, message: "Spotlight integration is deprecated. Use CoreSpotlight integration instead.")
let NSExternalRecordExtensionOption: String
@available(macOS, introduced: 10.6, deprecated: 10.13, message: "Spotlight integration is deprecated. Use CoreSpotlight integration instead.")
let NSEntityNameInPathKey: String
@available(macOS, introduced: 10.6, deprecated: 10.13, message: "Spotlight integration is deprecated. Use CoreSpotlight integration instead.")
let NSStoreUUIDInPathKey: String
@available(macOS, introduced: 10.6, deprecated: 10.13, message: "Spotlight integration is deprecated. Use CoreSpotlight integration instead.")
let NSStorePathKey: String
@available(macOS, introduced: 10.6, deprecated: 10.13, message: "Spotlight integration is deprecated. Use CoreSpotlight integration instead.")
let NSModelPathKey: String
@available(macOS, introduced: 10.6, deprecated: 10.13, message: "Spotlight integration is deprecated. Use CoreSpotlight integration instead.")
let NSObjectURIKey: String
@available(macOS 10.8, *)
let NSPersistentStoreForceDestroyOption: String
@available(macOS 10.13, *)
let NSPersistentHistoryTrackingKey: String
@available(macOS 10.13, *)
let NSBinaryStoreSecureDecodingClasses: String
@available(macOS 10.13, *)
let NSBinaryStoreInsecureDecodingCompatibilityOption: String
@available(macOS 10.15, *)
let NSPersistentStoreRemoteChangeNotificationPostOptionKey: String
@available(macOS 10.14, *)
let NSPersistentStoreURLKey: String
@available(macOS 10.14, *)
let NSPersistentHistoryTokenKey: String
@available(macOS 10.4, *)
class NSPersistentStoreCoordinator : NSObject, NSLocking {
  init(managedObjectModel model: NSManagedObjectModel)
  var managedObjectModel: NSManagedObjectModel { get }
  var persistentStores: [NSPersistentStore] { get }
  @available(macOS 10.10, *)
  var name: String?
  func persistentStore(for URL: URL) -> NSPersistentStore?
  func url(for store: NSPersistentStore) -> URL
  @available(macOS 10.5, *)
  func setURL(_ url: URL, for store: NSPersistentStore) -> Bool
  func addPersistentStore(ofType storeType: String, configurationName configuration: String?, at storeURL: URL?, options: [AnyHashable : Any]? = nil) throws -> NSPersistentStore
  @available(macOS 10.12, *)
  func addPersistentStore(with storeDescription: NSPersistentStoreDescription, completionHandler block: @escaping (NSPersistentStoreDescription, Error?) -> Void)
  @available(macOS 10.12, *)
  func addPersistentStore(with storeDescription: NSPersistentStoreDescription) async throws -> NSPersistentStoreDescription
  func remove(_ store: NSPersistentStore) throws
  func setMetadata(_ metadata: [String : Any]?, for store: NSPersistentStore)
  func metadata(for store: NSPersistentStore) -> [String : Any]
  func managedObjectID(forURIRepresentation url: URL) -> NSManagedObjectID?
  @available(macOS 10.7, *)
  func execute(_ request: NSPersistentStoreRequest, with context: NSManagedObjectContext) throws -> Any
  @available(macOS 10.5, *)
  class var registeredStoreTypes: [String : NSValue] { get }
  @available(macOS 10.5, *)
  class func registerStoreClass(_ storeClass: AnyClass?, forStoreType storeType: String)
  @available(macOS 10.9, *)
  class func metadataForPersistentStore(ofType storeType: String, at url: URL, options: [AnyHashable : Any]? = nil) throws -> [String : Any]
  @available(macOS 10.9, *)
  class func setMetadata(_ metadata: [String : Any]?, forPersistentStoreOfType storeType: String, at url: URL, options: [AnyHashable : Any]? = nil) throws
  @available(macOS 10.6, *)
  class func elementsDerived(fromExternalRecordAt fileURL: URL) -> [AnyHashable : Any]
  @available(macOS 10.6, *)
  func importStore(withIdentifier storeIdentifier: String?, fromExternalRecordsDirectoryAt externalRecordsURL: URL, to destinationURL: URL, options: [AnyHashable : Any]? = nil, ofType storeType: String) throws -> NSPersistentStore
  func migratePersistentStore(_ store: NSPersistentStore, to URL: URL, options: [AnyHashable : Any]? = nil, withType storeType: String) throws -> NSPersistentStore
  @available(macOS 10.11, *)
  func destroyPersistentStore(at url: URL, ofType storeType: String, options: [AnyHashable : Any]? = nil) throws
  @available(macOS 10.11, *)
  func replacePersistentStore(at destinationURL: URL, destinationOptions: [AnyHashable : Any]? = nil, withPersistentStoreFrom sourceURL: URL, sourceOptions: [AnyHashable : Any]? = nil, ofType storeType: String) throws
  @available(macOS 10.10, *)
  func perform(_ block: @escaping () -> Void)
  @available(macOS 10.10, *)
  func performAndWait(_ block: () -> Void)
  @available(macOS 10.14, *)
  func currentPersistentHistoryToken(fromStores stores: [Any]?) -> NSPersistentHistoryToken?
  @available(macOS, introduced: 10.4, deprecated: 10.10, message: "Use -performBlock: instead")
  func tryLock() -> Bool
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Use -metadataForPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func metadataForPersistentStore(ofType storeType: String?, at url: URL) throws -> [String : Any]
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Use  -setMetadata:forPersistentStoreOfType:URL:options:error: and pass in an options dictionary matching addPersistentStoreWithType")
  class func setMetadata(_ metadata: [String : Any]?, forPersistentStoreOfType storeType: String?, at url: URL) throws
  @available(macOS, introduced: 10.7, deprecated: 10.12, message: "Please see the release notes and Core Data documentation.")
  class func removeUbiquitousContentAndPersistentStore(at storeURL: URL, options: [AnyHashable : Any]? = nil) throws
}
@available(macOS, introduced: 10.9, deprecated: 10.12, message: "Please see the release notes and Core Data documentation.")
enum NSPersistentStoreUbiquitousTransitionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case accountAdded
  case accountRemoved
  case contentRemoved
  case initialImportCompleted
}
@available(macOS, introduced: 10.7, deprecated: 10.12, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreUbiquitousContentNameKey: String
@available(macOS, introduced: 10.7, deprecated: 10.12, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreUbiquitousContentURLKey: String
@available(macOS, introduced: 10.9, deprecated: 10.12, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreUbiquitousTransitionTypeKey: String
@available(macOS, introduced: 10.9, deprecated: 10.12, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreUbiquitousPeerTokenOption: String
@available(macOS, introduced: 10.9, deprecated: 10.12, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreRemoveUbiquitousMetadataOption: String
@available(macOS, introduced: 10.9, deprecated: 10.12, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreUbiquitousContainerIdentifierKey: String
@available(macOS, introduced: 10.9, deprecated: 10.12, message: "Please see the release notes and Core Data documentation.")
let NSPersistentStoreRebuildFromUbiquitousContentOption: String
