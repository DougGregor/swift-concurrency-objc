
enum NSAttributeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case undefinedAttributeType
  case integer16AttributeType
  case integer32AttributeType
  case integer64AttributeType
  case decimalAttributeType
  case doubleAttributeType
  case floatAttributeType
  case stringAttributeType
  case booleanAttributeType
  case dateAttributeType
  case binaryDataAttributeType
  @available(watchOS 4.0, *)
  case UUIDAttributeType
  @available(watchOS 4.0, *)
  case URIAttributeType
  @available(watchOS 2.0, *)
  case transformableAttributeType
  @available(watchOS 2.0, *)
  case objectIDAttributeType
}
@available(watchOS 2.0, *)
class NSAttributeDescription : NSPropertyDescription {
  var attributeType: NSAttributeType
  var attributeValueClassName: String?
  var defaultValue: Any?
  @available(watchOS 2.0, *)
  var valueTransformerName: String?
  @available(watchOS 2.0, *)
  var allowsExternalBinaryDataStorage: Bool
  @available(watchOS 6.0, *)
  var preservesValueInHistoryOnDeletion: Bool
}
