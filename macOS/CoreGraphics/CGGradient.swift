
class CGGradient : _CFObject {
}
struct CGGradientDrawingOptions : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var drawsBeforeStartLocation: CGGradientDrawingOptions { get }
  static var drawsAfterEndLocation: CGGradientDrawingOptions { get }
}
extension CGGradient {
  @available(macOS 10.5, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.5, *)
  /*not inherited*/ init?(colorSpace space: CGColorSpace, colorComponents components: UnsafePointer<CGFloat>, locations: UnsafePointer<CGFloat>?, count: Int)
  @available(macOS 10.5, *)
  /*not inherited*/ init?(colorsSpace space: CGColorSpace?, colors: CFArray, locations: UnsafePointer<CGFloat>?)
}
