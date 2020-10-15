
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMEntity : DOMNode {
  var publicId: String! { get }
  var systemId: String! { get }
  var notationName: String! { get }
}
