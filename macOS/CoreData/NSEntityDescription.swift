
@available(macOS 10.4, *)
class NSEntityDescription : NSObject, NSCoding, NSCopying, NSFastEnumeration {
  class func entity(forEntityName entityName: String, in context: NSManagedObjectContext) -> NSEntityDescription?
  class func insertNewObject(forEntityName entityName: String, into context: NSManagedObjectContext) -> NSManagedObject
  unowned(unsafe) var managedObjectModel: @sil_unmanaged NSManagedObjectModel { get }
  var managedObjectClassName: String!
  var name: String?
  var isAbstract: Bool
  var subentitiesByName: [String : NSEntityDescription] { get }
  var subentities: [NSEntityDescription]
  unowned(unsafe) var superentity: @sil_unmanaged NSEntityDescription? { get }
  var propertiesByName: [String : NSPropertyDescription] { get }
  var properties: [NSPropertyDescription]
  var userInfo: [AnyHashable : Any]?
  var attributesByName: [String : NSAttributeDescription] { get }
  var relationshipsByName: [String : NSRelationshipDescription] { get }
  func relationships(forDestination entity: NSEntityDescription) -> [NSRelationshipDescription]
  @available(macOS 10.5, *)
  func isKindOf(entity: NSEntityDescription) -> Bool
  @available(macOS 10.5, *)
  var versionHash: Data { get }
  @available(macOS 10.5, *)
  var versionHashModifier: String?
  @available(macOS 10.6, *)
  var renamingIdentifier: String?
  @available(macOS 10.13, *)
  var indexes: [NSFetchIndexDescription]
  @available(macOS 10.11, *)
  var uniquenessConstraints: [[Any]]
  @available(macOS, introduced: 10.5, deprecated: 10.13, message: "Use NSEntityDescription.indexes instead")
  var compoundIndexes: [[Any]]
  @available(macOS 10.13, *)
  var coreSpotlightDisplayNameExpression: NSExpression
}
