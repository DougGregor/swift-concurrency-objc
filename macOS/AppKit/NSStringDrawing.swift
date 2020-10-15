
@available(macOS 10.11, *)
class NSStringDrawingContext : NSObject {
  var minimumScaleFactor: CGFloat
  var actualScaleFactor: CGFloat { get }
  var totalBounds: NSRect { get }
}
extension NSString {
  @available(macOS 10.0, *)
  func size(withAttributes attrs: [NSAttributedString.Key : Any]? = nil) -> NSSize
  @available(macOS 10.0, *)
  func draw(at point: NSPoint, withAttributes attrs: [NSAttributedString.Key : Any]? = nil)
  @available(macOS 10.0, *)
  func draw(in rect: NSRect, withAttributes attrs: [NSAttributedString.Key : Any]? = nil)
}
extension NSAttributedString {
  @available(macOS 10.0, *)
  func size() -> NSSize
  @available(macOS 10.0, *)
  func draw(at point: NSPoint)
  @available(macOS 10.0, *)
  func draw(in rect: NSRect)
}
extension NSString {
  @available(macOS 10.0, *)
  struct DrawingOptions : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    static var usesLineFragmentOrigin: NSString.DrawingOptions { get }
    static var usesFontLeading: NSString.DrawingOptions { get }
    static var usesDeviceMetrics: NSString.DrawingOptions { get }
    @available(macOS 10.5, *)
    static var truncatesLastVisibleLine: NSString.DrawingOptions { get }
    @available(macOS, introduced: 10.0, deprecated: 10.11)
    static var disableScreenFontSubstitution: NSString.DrawingOptions { get }
    @available(macOS, introduced: 10.0, deprecated: 10.11)
    static var oneShot: NSString.DrawingOptions { get }
  }
}
extension NSString {
  @available(macOS 10.11, *)
  func draw(with rect: NSRect, options: NSString.DrawingOptions = [], attributes: [NSAttributedString.Key : Any]? = nil, context: NSStringDrawingContext?)
  @available(macOS 10.11, *)
  func boundingRect(with size: NSSize, options: NSString.DrawingOptions = [], attributes: [NSAttributedString.Key : Any]? = nil, context: NSStringDrawingContext?) -> NSRect
}
extension NSAttributedString {
  @available(macOS 10.11, *)
  func draw(with rect: NSRect, options: NSString.DrawingOptions = [], context: NSStringDrawingContext?)
  @available(macOS 10.11, *)
  func boundingRect(with size: NSSize, options: NSString.DrawingOptions = [], context: NSStringDrawingContext?) -> NSRect
}
extension NSString {
  func draw(with rect: NSRect, options: NSString.DrawingOptions = [], attributes: [NSAttributedString.Key : Any]? = nil)
  func boundingRect(with size: NSSize, options: NSString.DrawingOptions = [], attributes: [NSAttributedString.Key : Any]? = nil) -> NSRect
}
extension NSAttributedString {
  func draw(with rect: NSRect, options: NSString.DrawingOptions = [])
  func boundingRect(with size: NSSize, options: NSString.DrawingOptions = []) -> NSRect
}
