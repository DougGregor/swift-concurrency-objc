
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMHTMLAnchorElement : DOMHTMLElement {
  var charset: String!
  var coords: String!
  var hreflang: String!
  var name: String!
  var rel: String!
  var rev: String!
  var shape: String!
  var target: String!
  var type: String!
  @available(macOS 10.5, *)
  var text: String! { get }
  @available(macOS 10.5, *)
  var absoluteLinkURL: URL! { get }
  var href: String!
  @available(macOS 10.5, *)
  var `protocol`: String! { get }
  @available(macOS 10.5, *)
  var host: String! { get }
  @available(macOS 10.5, *)
  var hostname: String! { get }
  @available(macOS 10.5, *)
  var port: String! { get }
  @available(macOS 10.5, *)
  var pathname: String! { get }
  @available(macOS 10.5, *)
  var search: String! { get }
  @available(macOS 10.5, *)
  var hashName: String! { get }
}
