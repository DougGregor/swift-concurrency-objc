
@available(macOS 10.9, *)
class ODRecordMap : NSObject {
  @available(macOS 10.9, *)
  var native: String!
  @available(macOS 10.9, *)
  var odPredicate: [AnyHashable : Any]!
  @available(macOS 10.9, *)
  var attributes: [AnyHashable : Any]! { get }
  @available(macOS 10.9, *)
  var standardAttributeTypes: [Any]! { get }
  @available(macOS 10.9, *)
  func attributeMap(forStandardAttribute standardAttribute: String!) -> ODAttributeMap!
  @available(macOS 10.9, *)
  func setAttribute(_ attributeMap: ODAttributeMap!, forStandardAttribute standardAttribute: String!)
}
