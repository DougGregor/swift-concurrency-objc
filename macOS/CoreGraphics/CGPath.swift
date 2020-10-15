
class CGMutablePath : CGPath, _CFObject {
}

extension CGMutablePath {
  func addRoundedRect(in rect: CGRect, cornerWidth: CGFloat, cornerHeight: CGFloat, transform: CGAffineTransform = .identity)
  func move(to point: CGPoint, transform: CGAffineTransform = .identity)
  func addLine(to point: CGPoint, transform: CGAffineTransform = .identity)
  func addQuadCurve(to end: CGPoint, control: CGPoint, transform: CGAffineTransform = .identity)
  func addCurve(to end: CGPoint, control1: CGPoint, control2: CGPoint, transform: CGAffineTransform = .identity)
  func addRect(_ rect: CGRect, transform: CGAffineTransform = .identity)
  func addRects(_ rects: [CGRect], transform: CGAffineTransform = .identity)
  func addLines(between points: [CGPoint], transform: CGAffineTransform = .identity)
  func addEllipse(in rect: CGRect, transform: CGAffineTransform = .identity)
  func addRelativeArc(center: CGPoint, radius: CGFloat, startAngle: CGFloat, delta: CGFloat, transform: CGAffineTransform = .identity)
  func addArc(center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool, transform: CGAffineTransform = .identity)
  func addArc(tangent1End: CGPoint, tangent2End: CGPoint, radius: CGFloat, transform: CGAffineTransform = .identity)
  func addPath(_ path: CGPath, transform: CGAffineTransform = .identity)
}
class CGPath : _CFObject {
}

extension CGPath {
  func copy(dashingWithPhase phase: CGFloat, lengths: [CGFloat], transform: CGAffineTransform = .identity) -> CGPath
  func copy(strokingWithWidth lineWidth: CGFloat, lineCap: CGLineCap, lineJoin: CGLineJoin, miterLimit: CGFloat, transform: CGAffineTransform = .identity) -> CGPath
  func contains(_ point: CGPoint, using rule: CGPathFillRule = .winding, transform: CGAffineTransform = .identity) -> Bool
}
enum CGLineJoin : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case miter
  case round
  case bevel
}
enum CGLineCap : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case butt
  case round
  case square
}
extension CGPath {
  @available(macOS 10.2, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.2, *)
  func copy() -> CGPath?
  @available(macOS 10.7, *)
  func copy(using transform: UnsafePointer<CGAffineTransform>?) -> CGPath?
  @available(macOS 10.2, *)
  func mutableCopy() -> CGMutablePath?
  @available(macOS 10.7, *)
  func mutableCopy(using transform: UnsafePointer<CGAffineTransform>?) -> CGMutablePath?
  @available(macOS 10.5, *)
  /*not inherited*/ init(rect: CGRect, transform: UnsafePointer<CGAffineTransform>?)
  @available(macOS 10.7, *)
  /*not inherited*/ init(ellipseIn rect: CGRect, transform: UnsafePointer<CGAffineTransform>?)
  @available(macOS 10.9, *)
  /*not inherited*/ init(roundedRect rect: CGRect, cornerWidth: CGFloat, cornerHeight: CGFloat, transform: UnsafePointer<CGAffineTransform>?)
  @available(macOS 10.7, *)
  /*not inherited*/ init?(__byDashing path: CGPath, transform: UnsafePointer<CGAffineTransform>?, phase: CGFloat, lengths: UnsafePointer<CGFloat>?, count: Int)
  @available(macOS 10.7, *)
  /*not inherited*/ init?(__byStroking path: CGPath, transform: UnsafePointer<CGAffineTransform>?, lineWidth: CGFloat, lineCap: CGLineCap, lineJoin: CGLineJoin, miterLimit: CGFloat)
  @available(macOS 10.2, *)
  func __equalTo(_ path2: CGPath) -> Bool
  @available(macOS 10.2, *)
  var isEmpty: Bool { get }
  @available(macOS 10.2, *)
  func isRect(_ rect: UnsafeMutablePointer<CGRect>?) -> Bool
  @available(macOS 10.2, *)
  var currentPoint: CGPoint { get }
  @available(macOS 10.2, *)
  var boundingBox: CGRect { get }
  @available(macOS 10.6, *)
  var boundingBoxOfPath: CGRect { get }
  @available(macOS 10.4, *)
  func __containsPoint(transform m: UnsafePointer<CGAffineTransform>?, point: CGPoint, eoFill: Bool) -> Bool
  @available(macOS 10.2, *)
  func apply(info: UnsafeMutableRawPointer?, function: CGPathApplierFunction)
  @available(macOS 10.13, *)
  func applyWithBlock(_ block: (UnsafePointer<CGPathElement>) -> Void)
}
extension CGMutablePath {
  @available(macOS 10.2, *)
  /*not inherited*/ init()
  @available(macOS 10.9, *)
  func __addRoundedRect(transform: UnsafePointer<CGAffineTransform>?, rect: CGRect, cornerWidth: CGFloat, cornerHeight: CGFloat)
  @available(macOS 10.2, *)
  func __moveTo(transform m: UnsafePointer<CGAffineTransform>?, x: CGFloat, y: CGFloat)
  @available(macOS 10.2, *)
  func __addLineTo(transform m: UnsafePointer<CGAffineTransform>?, x: CGFloat, y: CGFloat)
  @available(macOS 10.2, *)
  func __addQuadCurve(transform m: UnsafePointer<CGAffineTransform>?, cpx: CGFloat, cpy: CGFloat, endingAtX x: CGFloat, y: CGFloat)
  @available(macOS 10.2, *)
  func __addCurve(transform m: UnsafePointer<CGAffineTransform>?, cp1x: CGFloat, cp1y: CGFloat, cp2x: CGFloat, cp2y: CGFloat, endingAtX x: CGFloat, y: CGFloat)
  @available(macOS 10.2, *)
  func closeSubpath()
  @available(macOS 10.2, *)
  func __addRect(transform m: UnsafePointer<CGAffineTransform>?, rect: CGRect)
  @available(macOS 10.2, *)
  func __addRects(transform m: UnsafePointer<CGAffineTransform>?, rects: UnsafePointer<CGRect>?, count: Int)
  @available(macOS 10.2, *)
  func __addLines(transform m: UnsafePointer<CGAffineTransform>?, between points: UnsafePointer<CGPoint>?, count: Int)
  @available(macOS 10.4, *)
  func __addEllipse(transform m: UnsafePointer<CGAffineTransform>?, rect: CGRect)
  @available(macOS 10.7, *)
  func __addRelativeArc(transform matrix: UnsafePointer<CGAffineTransform>?, x: CGFloat, y: CGFloat, radius: CGFloat, startAngle: CGFloat, delta: CGFloat)
  @available(macOS 10.2, *)
  func __addArc(transform m: UnsafePointer<CGAffineTransform>?, x: CGFloat, y: CGFloat, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  @available(macOS 10.2, *)
  func __addArc(transform m: UnsafePointer<CGAffineTransform>?, x1: CGFloat, y1: CGFloat, x2: CGFloat, y2: CGFloat, radius: CGFloat)
  @available(macOS 10.2, *)
  func __addPath(transform m: UnsafePointer<CGAffineTransform>?, path path2: CGPath)
}
enum CGPathElementType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case moveToPoint
  case addLineToPoint
  case addQuadCurveToPoint
  case addCurveToPoint
  case closeSubpath
}
struct CGPathElement {
  var type: CGPathElementType
  var points: UnsafeMutablePointer<CGPoint>
  init(type: CGPathElementType, points: UnsafeMutablePointer<CGPoint>)
}
typealias CGPathApplierFunction = @convention(c) (UnsafeMutableRawPointer?, UnsafePointer<CGPathElement>) -> Void
typealias CGPathApplyBlock = (UnsafePointer<CGPathElement>) -> Void
