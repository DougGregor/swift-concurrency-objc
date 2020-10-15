
class CGGradient : _CFObject {
}
struct CGGradientDrawingOptions : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var drawsBeforeStartLocation: CGGradientDrawingOptions { get }
  static var drawsAfterEndLocation: CGGradientDrawingOptions { get }
}
extension CGGradient {
  @available(tvOS 2.0, *)
  class var typeID: CFTypeID { get }
  @available(tvOS 2.0, *)
  /*not inherited*/ init?(colorSpace space: CGColorSpace, colorComponents components: UnsafePointer<CGFloat>, locations: UnsafePointer<CGFloat>?, count: Int)
  @available(tvOS 2.0, *)
  /*not inherited*/ init?(colorsSpace space: CGColorSpace?, colors: CFArray, locations: UnsafePointer<CGFloat>?)
}
