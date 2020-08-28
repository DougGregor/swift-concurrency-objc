
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMHTMLDocument : DOMDocument {
  @available(macOS 10.5, *)
  var embeds: DOMHTMLCollection! { get }
  @available(macOS 10.5, *)
  var plugins: DOMHTMLCollection! { get }
  @available(macOS 10.5, *)
  var scripts: DOMHTMLCollection! { get }
  @available(macOS 10.5, *)
  var width: Int32 { get }
  @available(macOS 10.5, *)
  var height: Int32 { get }
  @available(macOS 10.5, *)
  var dir: String!
  @available(macOS 10.5, *)
  var designMode: String!
  @available(macOS 10.6, *)
  var compatMode: String! { get }
  @available(macOS 10.5, *)
  var bgColor: String!
  @available(macOS 10.5, *)
  var fgColor: String!
  @available(macOS 10.5, *)
  var alinkColor: String!
  @available(macOS 10.5, *)
  var linkColor: String!
  @available(macOS 10.5, *)
  var vlinkColor: String!
  func open()
  func close()
  func write(_ text: String!)
  func writeln(_ text: String!)
  @available(macOS 10.6, *)
  func clear()
  @available(macOS 10.5, *)
  func captureEvents()
  @available(macOS 10.5, *)
  func releaseEvents()
}
