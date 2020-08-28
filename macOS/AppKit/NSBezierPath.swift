
extension NSBezierPath {
  enum LineCapStyle : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case butt
    case round
    case square
  }
  enum LineJoinStyle : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case miter
    case round
    case bevel
  }
  enum WindingRule : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case nonZero
    case evenOdd
  }
  enum ElementType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case moveTo
    case lineTo
    case curveTo
    case closePath
  }
}
class NSBezierPath : NSObject, NSCopying, NSSecureCoding {
  /*not inherited*/ init(rect: NSRect)
  /*not inherited*/ init(ovalIn rect: NSRect)
  @available(macOS 10.5, *)
  /*not inherited*/ init(roundedRect rect: NSRect, xRadius: CGFloat, yRadius: CGFloat)
  class func fill(_ rect: NSRect)
  class func stroke(_ rect: NSRect)
  class func clip(_ rect: NSRect)
  class func strokeLine(from point1: NSPoint, to point2: NSPoint)
  class func drawPackedGlyphs(_ packedGlyphs: UnsafePointer<CChar>, at point: NSPoint)
  class var defaultMiterLimit: CGFloat
  class var defaultFlatness: CGFloat
  class var defaultWindingRule: NSBezierPath.WindingRule
  class var defaultLineCapStyle: NSBezierPath.LineCapStyle
  class var defaultLineJoinStyle: NSBezierPath.LineJoinStyle
  class var defaultLineWidth: CGFloat
  func move(to point: NSPoint)
  func line(to point: NSPoint)
  func curve(to endPoint: NSPoint, controlPoint1: NSPoint, controlPoint2: NSPoint)
  func close()
  func removeAllPoints()
  func relativeMove(to point: NSPoint)
  func relativeLine(to point: NSPoint)
  func relativeCurve(to endPoint: NSPoint, controlPoint1: NSPoint, controlPoint2: NSPoint)
  var lineWidth: CGFloat
  var lineCapStyle: NSBezierPath.LineCapStyle
  var lineJoinStyle: NSBezierPath.LineJoinStyle
  var windingRule: NSBezierPath.WindingRule
  var miterLimit: CGFloat
  var flatness: CGFloat
  func getLineDash(_ pattern: UnsafeMutablePointer<CGFloat>?, count: UnsafeMutablePointer<Int>?, phase: UnsafeMutablePointer<CGFloat>?)
  func setLineDash(_ pattern: UnsafePointer<CGFloat>?, count: Int, phase: CGFloat)
  func stroke()
  func fill()
  func addClip()
  func setClip()
  @NSCopying var flattened: NSBezierPath { get }
  @NSCopying var reversed: NSBezierPath { get }
  func transform(using transform: AffineTransform)
  var isEmpty: Bool { get }
  var currentPoint: NSPoint { get }
  var controlPointBounds: NSRect { get }
  var bounds: NSRect { get }
  var elementCount: Int { get }
  func element(at index: Int, associatedPoints points: NSPointArray?) -> NSBezierPath.ElementType
  func element(at index: Int) -> NSBezierPath.ElementType
  func setAssociatedPoints(_ points: NSPointArray?, at index: Int)
  func append(_ path: NSBezierPath)
  func appendRect(_ rect: NSRect)
  func appendPoints(_ points: NSPointArray, count: Int)
  func appendOval(in rect: NSRect)
  func appendArc(withCenter center: NSPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func appendArc(withCenter center: NSPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat)
  func appendArc(from point1: NSPoint, to point2: NSPoint, radius: CGFloat)
  @available(macOS 10.13, *)
  func append(withCGGlyph glyph: CGGlyph, in font: NSFont)
  @available(macOS 10.13, *)
  func append(withCGGlyphs glyphs: UnsafePointer<CGGlyph>, count: Int, in font: NSFont)
  @available(macOS 10.5, *)
  func appendRoundedRect(_ rect: NSRect, xRadius: CGFloat, yRadius: CGFloat)
  func contains(_ point: NSPoint) -> Bool
}
extension NSBezierPath {
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use -appendBezierPathWithCGGlyph:inFont: instead")
  func appendGlyph(_ glyph: NSGlyph, in font: NSFont)
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use -appendBezierPathWithCGGlyphs:count:inFont: instead")
  func appendGlyphs(_ glyphs: UnsafeMutablePointer<NSGlyph>, count: Int, in font: NSFont)
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use -appendBezierPathWithCGGlyphs:count:inFont: instead")
  func appendPackedGlyphs(_ packedGlyphs: UnsafePointer<CChar>)
}
