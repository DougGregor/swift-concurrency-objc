
enum NSEntityMappingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case undefinedEntityMappingType
  case customEntityMappingType
  case addEntityMappingType
  case removeEntityMappingType
  case copyEntityMappingType
  case transformEntityMappingType
}
@available(watchOS 2.0, *)
class NSEntityMapping : NSObject {
  var name: String!
  var mappingType: NSEntityMappingType
  var sourceEntityName: String?
  var sourceEntityVersionHash: Data?
  var destinationEntityName: String?
  var destinationEntityVersionHash: Data?
  var attributeMappings: [NSPropertyMapping]?
  var relationshipMappings: [NSPropertyMapping]?
  var sourceExpression: NSExpression?
  var userInfo: [AnyHashable : Any]?
  var entityMigrationPolicyClassName: String?
}
