
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMHTMLTextAreaElement : DOMHTMLElement {
  @available(macOS 10.6, *)
  var autofocus: Bool
  var disabled: Bool
  var form: DOMHTMLFormElement! { get }
  var name: String!
  var readOnly: Bool
  var rows: Int32
  var cols: Int32
  var type: String! { get }
  var defaultValue: String!
  var value: String!
  @available(macOS 10.6, *)
  var willValidate: Bool { get }
  @available(macOS 10.5, *)
  var selectionStart: Int32
  @available(macOS 10.5, *)
  var selectionEnd: Int32
  func select()
  @available(macOS 10.5, *)
  func setSelectionRange(_ start: Int32, end: Int32)
}
