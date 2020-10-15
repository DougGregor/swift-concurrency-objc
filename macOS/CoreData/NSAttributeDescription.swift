
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
  @available(macOS 10.13, *)
  case UUIDAttributeType
  @available(macOS 10.13, *)
  case URIAttributeType
  @available(macOS 10.5, *)
  case transformableAttributeType
  @available(macOS 10.6, *)
  case objectIDAttributeType
}
@available(macOS 10.4, *)
class NSAttributeDescription : NSPropertyDescription {
  var attributeType: NSAttributeType
  var attributeValueClassName: String?
  var defaultValue: Any?
  @available(macOS 10.5, *)
  var valueTransformerName: String?
  @available(macOS 10.7, *)
  var allowsExternalBinaryDataStorage: Bool
  @available(macOS 10.15, *)
  var preservesValueInHistoryOnDeletion: Bool
}
