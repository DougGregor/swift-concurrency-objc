
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMHTMLImageElement : DOMHTMLElement {
  var name: String!
  var align: String!
  var alt: String!
  var border: String!
  var height: Int32
  var hspace: Int32
  var isMap: Bool
  var longDesc: String!
  var src: String!
  var useMap: String!
  var vspace: Int32
  var width: Int32
  @available(macOS 10.5, *)
  var complete: Bool { get }
  @available(macOS 10.5, *)
  var lowsrc: String!
  @available(macOS 10.5, *)
  var naturalHeight: Int32 { get }
  @available(macOS 10.5, *)
  var naturalWidth: Int32 { get }
  @available(macOS 10.5, *)
  var x: Int32 { get }
  @available(macOS 10.5, *)
  var y: Int32 { get }
  @available(macOS 10.5, *)
  var altDisplayString: String! { get }
  @available(macOS 10.5, *)
  var absoluteImageURL: URL! { get }
}
