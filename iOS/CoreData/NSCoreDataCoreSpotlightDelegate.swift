
@available(iOS 11.0, *)
class NSCoreDataCoreSpotlightDelegate : NSObject {
  func domainIdentifier() -> String
  func indexName() -> String?
  init(forStoreWith description: NSPersistentStoreDescription, model: NSManagedObjectModel)
}
