
@available(macOS 10.13, *)
class NSCoreDataCoreSpotlightDelegate : NSObject {
  func domainIdentifier() -> String
  func indexName() -> String?
  init(forStoreWith description: NSPersistentStoreDescription, model: NSManagedObjectModel)
}
