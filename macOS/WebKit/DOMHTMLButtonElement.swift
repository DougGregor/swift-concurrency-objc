
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMHTMLButtonElement : DOMHTMLElement {
  @available(macOS 10.6, *)
  var autofocus: Bool
  var disabled: Bool
  var form: DOMHTMLFormElement! { get }
  var type: String!
  var name: String!
  var value: String!
  @available(macOS 10.6, *)
  var willValidate: Bool { get }
}
