
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMHTMLLinkElement : DOMHTMLElement {
  var disabled: Bool
  var charset: String!
  var href: String!
  var hreflang: String!
  var media: String!
  var rel: String!
  var rev: String!
  var target: String!
  var type: String!
  @available(macOS 10.5, *)
  var absoluteLinkURL: URL! { get }
}
