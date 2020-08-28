
@available(macOS 10.9, *)
class ODAttributeMap : NSObject {
  @available(macOS 10.9, *)
  var customQueryFunction: String!
  @available(macOS 10.9, *)
  var customTranslationFunction: String!
  @available(macOS 10.9, *)
  var customAttributes: [Any]!
  @available(macOS 10.9, *)
  var value: String!
  convenience init!(value: String!)
  convenience init!(staticValue: String!)
  @available(macOS 10.9, *)
  func setStaticValue(_ staticValue: String!)
  @available(macOS 10.9, *)
  func setVariableSubstitution(_ variableSubstitution: String!)
}
