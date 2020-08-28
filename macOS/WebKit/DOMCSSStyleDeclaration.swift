
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMCSSStyleDeclaration : DOMObject {
  var cssText: String!
  var length: UInt32 { get }
  var parentRule: DOMCSSRule! { get }
  func getPropertyValue(_ propertyName: String!) -> String!
  func getPropertyCSSValue(_ propertyName: String!) -> DOMCSSValue!
  func removeProperty(_ propertyName: String!) -> String!
  func getPropertyPriority(_ propertyName: String!) -> String!
  @available(macOS 10.5, *)
  func setProperty(_ propertyName: String!, value: String!, priority: String!)
  func item(_ index: UInt32) -> String!
  @available(macOS 10.5, *)
  func isPropertyImplicit(_ propertyName: String!) -> Bool
}
extension DOMCSSStyleDeclaration {
}
