
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
  @available(tvOS 11.0, *)
  case UUIDAttributeType
  @available(tvOS 11.0, *)
  case URIAttributeType
  @available(tvOS 3.0, *)
  case transformableAttributeType
  @available(tvOS 3.0, *)
  case objectIDAttributeType
}
@available(tvOS 3.0, *)
class NSAttributeDescription : NSPropertyDescription {
  var attributeType: NSAttributeType
  var attributeValueClassName: String?
  var defaultValue: Any?
  @available(tvOS 3.0, *)
  var valueTransformerName: String?
  @available(tvOS 5.0, *)
  var allowsExternalBinaryDataStorage: Bool
  @available(tvOS 13.0, *)
  var preservesValueInHistoryOnDeletion: Bool
}
