
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
  @available(iOS 11.0, *)
  case UUIDAttributeType
  @available(iOS 11.0, *)
  case URIAttributeType
  @available(iOS 3.0, *)
  case transformableAttributeType
  @available(iOS 3.0, *)
  case objectIDAttributeType
}
@available(iOS 3.0, *)
class NSAttributeDescription : NSPropertyDescription {
  var attributeType: NSAttributeType
  var attributeValueClassName: String?
  var defaultValue: Any?
  @available(iOS 3.0, *)
  var valueTransformerName: String?
  @available(iOS 5.0, *)
  var allowsExternalBinaryDataStorage: Bool
  @available(iOS 13.0, *)
  var preservesValueInHistoryOnDeletion: Bool
}
