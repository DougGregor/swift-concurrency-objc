
@available(macOS 10.4, *)
class NSManagedObjectModel : NSObject, NSCoding, NSCopying, NSFastEnumeration {
  class func mergedModel(from bundles: [Bundle]?) -> NSManagedObjectModel?
  /*not inherited*/ init?(byMerging models: [NSManagedObjectModel]?)
  convenience init?(contentsOf url: URL)
  var entitiesByName: [String : NSEntityDescription] { get }
  var entities: [NSEntityDescription]
  var configurations: [String] { get }
  func entities(forConfigurationName configuration: String?) -> [NSEntityDescription]?
  func setEntities(_ entities: [NSEntityDescription], forConfigurationName configuration: String)
  func setFetchRequestTemplate(_ fetchRequestTemplate: NSFetchRequest<NSFetchRequestResult>?, forName name: String)
  func fetchRequestTemplate(forName name: String) -> NSFetchRequest<NSFetchRequestResult>?
  func fetchRequestFromTemplate(withName name: String, substitutionVariables variables: [String : Any]) -> NSFetchRequest<NSFetchRequestResult>?
  var localizationDictionary: [String : String]?
  @available(macOS 10.5, *)
  class func mergedModel(from bundles: [Bundle]?, forStoreMetadata metadata: [String : Any]) -> NSManagedObjectModel?
  @available(macOS 10.5, *)
  /*not inherited*/ init?(byMerging models: [NSManagedObjectModel], forStoreMetadata metadata: [String : Any])
  @available(macOS 10.5, *)
  var fetchRequestTemplatesByName: [String : NSFetchRequest<NSFetchRequestResult>] { get }
  @available(macOS 10.5, *)
  var versionIdentifiers: Set<AnyHashable>
  @available(macOS 10.5, *)
  func isConfiguration(withName configuration: String?, compatibleWithStoreMetadata metadata: [String : Any]) -> Bool
  @available(macOS 10.5, *)
  var entityVersionHashesByName: [String : Data] { get }
}
