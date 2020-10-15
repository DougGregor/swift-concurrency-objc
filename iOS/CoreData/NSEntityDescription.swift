
@available(iOS 3.0, *)
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
  @available(iOS 3.0, *)
  func isKindOf(entity: NSEntityDescription) -> Bool
  @available(iOS 3.0, *)
  var versionHash: Data { get }
  @available(iOS 3.0, *)
  var versionHashModifier: String?
  @available(iOS 3.0, *)
  var renamingIdentifier: String?
  @available(iOS 11.0, *)
  var indexes: [NSFetchIndexDescription]
  @available(iOS 9.0, *)
  var uniquenessConstraints: [[Any]]
  @available(iOS, introduced: 3.0, deprecated: 11.0, message: "Use NSEntityDescription.indexes instead")
  var compoundIndexes: [[Any]]
  @available(iOS 11.0, *)
  var coreSpotlightDisplayNameExpression: NSExpression
}
