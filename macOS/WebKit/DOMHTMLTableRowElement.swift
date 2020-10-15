
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMHTMLTableRowElement : DOMHTMLElement {
  var rowIndex: Int32 { get }
  var sectionRowIndex: Int32 { get }
  var cells: DOMHTMLCollection! { get }
  var align: String!
  var bgColor: String!
  var ch: String!
  var chOff: String!
  var vAlign: String!
  func insertCell(_ index: Int32) -> DOMHTMLElement!
  func deleteCell(_ index: Int32)
}
