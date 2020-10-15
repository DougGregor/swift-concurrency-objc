
@available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  func isKindOf(entity: NSEntityDescription) -> Bool
  @available(watchOS 2.0, *)
  var versionHash: Data { get }
  @available(watchOS 2.0, *)
  var versionHashModifier: String?
  @available(watchOS 2.0, *)
  var renamingIdentifier: String?
  @available(watchOS 4.0, *)
  var indexes: [NSFetchIndexDescription]
  @available(watchOS 2.0, *)
  var uniquenessConstraints: [[Any]]
  @available(watchOS, introduced: 2.0, deprecated: 4.0, message: "Use NSEntityDescription.indexes instead")
  var compoundIndexes: [[Any]]
  @available(watchOS 4.0, *)
  var coreSpotlightDisplayNameExpression: NSExpression
}
