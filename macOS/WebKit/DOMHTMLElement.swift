
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMHTMLElement : DOMElement {
  var title: String!
  var lang: String!
  var dir: String!
  var tabIndex: Int32
  @available(macOS 10.8, *)
  var accessKey: String!
  var outerText: String!
  var contentEditable: String!
  var idName: String!
  var children: DOMHTMLCollection! { get }
  @available(macOS 10.5, *)
  var titleDisplayString: String! { get }
  @available(macOS 10.8, *)
  func click()
}
