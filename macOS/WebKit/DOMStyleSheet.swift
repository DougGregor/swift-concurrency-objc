
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMStyleSheet : DOMObject {
  var type: String! { get }
  var disabled: Bool
  var ownerNode: DOMNode! { get }
  var parent: DOMStyleSheet! { get }
  var href: String! { get }
  var title: String! { get }
  var media: DOMMediaList! { get }
}
