
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMText : DOMCharacterData {
  @available(macOS 10.6, *)
  var wholeText: String! { get }
  func splitText(_ offset: UInt32) -> DOMText!
  @available(macOS 10.6, *)
  func replaceWholeText(_ content: String!) -> DOMText!
}
