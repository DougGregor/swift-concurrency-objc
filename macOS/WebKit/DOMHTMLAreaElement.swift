
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMHTMLAreaElement : DOMHTMLElement {
  var alt: String!
  var coords: String!
  var noHref: Bool
  var shape: String!
  var target: String!
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
