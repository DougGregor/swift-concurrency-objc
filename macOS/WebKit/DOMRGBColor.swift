
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMRGBColor : DOMObject {
  var red: DOMCSSPrimitiveValue! { get }
  var green: DOMCSSPrimitiveValue! { get }
  var blue: DOMCSSPrimitiveValue! { get }
  var alpha: DOMCSSPrimitiveValue! { get }
  @available(macOS 10.5, *)
  @NSCopying var color: NSColor! { get }
}
