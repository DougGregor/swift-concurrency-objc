
@frozen struct CGFloat {
  typealias NativeType = Double
  @_transparent init()
  @_transparent init(_ value: CGFloat)
  var native: CGFloat.NativeType
}

extension CGFloat : SignedNumeric {
}

extension CGFloat : BinaryFloatingPoint {
  @_transparent var bitPattern: UInt { get }
  @_transparent init(bitPattern: UInt)
  @_transparent init(nan payload: CGFloat.RawSignificand, signaling: Bool)
}

extension CGFloat {
}

extension CGFloat : CustomReflectable {
}

extension CGFloat : CustomStringConvertible {
}

extension CGFloat : Hashable {
}

extension CGFloat {
}

extension CGFloat : Strideable {
}

extension CGFloat : _CVarArgPassedAsDouble, _CVarArgAligned {
}

extension CGFloat : Codable {
}

enum CGPathFillRule : Int {
  case winding
  case evenOdd
}

protocol _CGColorInitTrampoline {
  init?(colorSpace space: CGColorSpace, components: UnsafePointer<CGFloat>)
}

extension _CGColorInitTrampoline {
  init(_colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float)
}

@_transparent func acos(_ x: CGFloat) -> CGFloat

@_transparent func acosh(_ x: CGFloat) -> CGFloat

@_transparent func asin(_ x: CGFloat) -> CGFloat

@_transparent func asinh(_ x: CGFloat) -> CGFloat

@_transparent func atan(_ x: CGFloat) -> CGFloat

@_transparent func atan2(_ lhs: CGFloat, _ rhs: CGFloat) -> CGFloat

@_transparent func atanh(_ x: CGFloat) -> CGFloat

@_transparent func cbrt(_ x: CGFloat) -> CGFloat

@_transparent func copysign(_ lhs: CGFloat, _ rhs: CGFloat) -> CGFloat

@_transparent func cos(_ x: CGFloat) -> CGFloat

@_transparent func cosh(_ x: CGFloat) -> CGFloat

@_transparent func erf(_ x: CGFloat) -> CGFloat

@_transparent func erfc(_ x: CGFloat) -> CGFloat

@_transparent func exp(_ x: CGFloat) -> CGFloat

@_transparent func exp2(_ x: CGFloat) -> CGFloat

@_transparent func expm1(_ x: CGFloat) -> CGFloat

@_transparent func fdim(_ lhs: CGFloat, _ rhs: CGFloat) -> CGFloat

@_transparent func fmax(_ lhs: CGFloat, _ rhs: CGFloat) -> CGFloat

@_transparent func fmin(_ lhs: CGFloat, _ rhs: CGFloat) -> CGFloat

@_transparent func hypot(_ lhs: CGFloat, _ rhs: CGFloat) -> CGFloat

@available(swift, deprecated: 4.2, message: "use the exponent property.")
@_transparent func ilogb(_ x: CGFloat) -> Int

@_transparent func j0(_ x: CGFloat) -> CGFloat

@_transparent func j1(_ x: CGFloat) -> CGFloat

@_transparent func jn(_ n: Int, _ x: CGFloat) -> CGFloat

@available(swift, deprecated: 4.2, renamed: "scalbn")
@_transparent func ldexp(_ x: CGFloat, _ n: Int) -> CGFloat

@_transparent func lgamma(_ x: CGFloat) -> (CGFloat, Int)

@_transparent func log(_ x: CGFloat) -> CGFloat

@_transparent func log10(_ x: CGFloat) -> CGFloat

@_transparent func log1p(_ x: CGFloat) -> CGFloat

@_transparent func log2(_ x: CGFloat) -> CGFloat

@_transparent func logb(_ x: CGFloat) -> CGFloat

@available(swift, deprecated: 4.2, message: "use CGFloat(nan: CGFloat.RawSignificand) instead.")
@_transparent func nan(_ tag: String) -> CGFloat

@_transparent func nearbyint(_ x: CGFloat) -> CGFloat

@_transparent func nextafter(_ lhs: CGFloat, _ rhs: CGFloat) -> CGFloat

@_transparent func pow(_ lhs: CGFloat, _ rhs: CGFloat) -> CGFloat

@_transparent func remquo(_ x: CGFloat, _ y: CGFloat) -> (CGFloat, Int)

@_transparent func rint(_ x: CGFloat) -> CGFloat

@_transparent func sin(_ x: CGFloat) -> CGFloat

@_transparent func sinh(_ x: CGFloat) -> CGFloat

@_transparent func tan(_ x: CGFloat) -> CGFloat

@_transparent func tanh(_ x: CGFloat) -> CGFloat

@_transparent func tgamma(_ x: CGFloat) -> CGFloat

@_transparent func y0(_ x: CGFloat) -> CGFloat

@_transparent func y1(_ x: CGFloat) -> CGFloat

@_transparent func yn(_ n: Int, _ x: CGFloat) -> CGFloat

extension CGAffineTransform : Equatable {
}

extension CGColor {
  @available(macOS 10.3, iOS 2.0, *)
  var components: [CGFloat]? { get }
}

extension CGColor : _CGColorInitTrampoline, _ExpressibleByColorLiteral {
}

extension CGColorSpace {
  var colorTable: [UInt8]? { get }
}

extension CGContext {
  func setLineDash(phase: CGFloat, lengths: [CGFloat])
  func move(to point: CGPoint)
  func addLine(to point: CGPoint)
  func addCurve(to end: CGPoint, control1: CGPoint, control2: CGPoint)
  func addQuadCurve(to end: CGPoint, control: CGPoint)
  func addRects(_ rects: [CGRect])
  func addLines(between points: [CGPoint])
  func addArc(center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func addArc(tangent1End: CGPoint, tangent2End: CGPoint, radius: CGFloat)
  func fillPath(using rule: CGPathFillRule = .winding)
  func clip(using rule: CGPathFillRule = .winding)
  func fill(_ rects: [CGRect])
  func strokeLineSegments(between points: [CGPoint])
  func clip(to rects: [CGRect])
  func draw(_ image: CGImage, in rect: CGRect, byTiling: Bool = false)
  var textPosition: CGPoint
  func showGlyphs(_ glyphs: [CGGlyph], at positions: [CGPoint])
}

extension CGPoint {
  static var zero: CGPoint { get }
  @_transparent init(x: Int, y: Int)
  @_transparent init(x: Double, y: Double)
  init?(dictionaryRepresentation dict: CFDictionary)
}

extension CGPoint : CustomReflectable {
}

extension CGPoint : _CustomPlaygroundQuickLookable {
}

extension CGPoint : CustomDebugStringConvertible {
}

extension CGPoint : Equatable {
}

extension CGPoint : Codable {
}

extension CGSize {
  static var zero: CGSize { get }
  @_transparent init(width: Int, height: Int)
  @_transparent init(width: Double, height: Double)
  init?(dictionaryRepresentation dict: CFDictionary)
}

extension CGSize : CustomReflectable {
}

extension CGSize : _CustomPlaygroundQuickLookable {
}

extension CGSize : CustomDebugStringConvertible {
}

extension CGSize : Equatable {
}

extension CGSize : Codable {
}

extension CGVector {
  static var zero: CGVector { get }
  @_transparent init(dx: Int, dy: Int)
  @_transparent init(dx: Double, dy: Double)
}

extension CGVector : Equatable {
}

extension CGVector : CustomDebugStringConvertible {
}

extension CGVector : Codable {
}

extension CGRect {
  static var zero: CGRect { get }
  @_transparent init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat)
  @_transparent init(x: Double, y: Double, width: Double, height: Double)
  @_transparent init(x: Int, y: Int, width: Int, height: Int)
  init?(dictionaryRepresentation dict: CFDictionary)
  @_transparent func divided(atDistance: CGFloat, from fromEdge: CGRectEdge) -> (slice: CGRect, remainder: CGRect)
}

extension CGRect : CustomReflectable {
}

extension CGRect : _CustomPlaygroundQuickLookable {
}

extension CGRect : CustomDebugStringConvertible {
}

extension CGRect : Equatable {
}

extension CGRect : Codable {
}

extension CGAffineTransform {
  static var identity: CGAffineTransform { get }
}

extension CGAffineTransform : Codable {
}

extension CGImage {
  func copy(maskingColorComponents components: [CGFloat]) -> CGImage?
}

extension CGContext {
  func draw(_ layer: CGLayer, in rect: CGRect)
  func draw(_ layer: CGLayer, at point: CGPoint)
}

extension CGPath {
  func copy(dashingWithPhase phase: CGFloat, lengths: [CGFloat], transform: CGAffineTransform = .identity) -> CGPath
  func copy(strokingWithWidth lineWidth: CGFloat, lineCap: CGLineCap, lineJoin: CGLineJoin, miterLimit: CGFloat, transform: CGAffineTransform = .identity) -> CGPath
  func contains(_ point: CGPoint, using rule: CGPathFillRule = .winding, transform: CGAffineTransform = .identity) -> Bool
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

extension UInt8 {
  @_transparent init(_ value: CGFloat)
}

extension Int8 {
  @_transparent init(_ value: CGFloat)
}

extension UInt16 {
  @_transparent init(_ value: CGFloat)
}

extension Int16 {
  @_transparent init(_ value: CGFloat)
}

extension UInt32 {
  @_transparent init(_ value: CGFloat)
}

extension Int32 {
  @_transparent init(_ value: CGFloat)
}

extension UInt64 {
  @_transparent init(_ value: CGFloat)
}

extension Int64 {
  @_transparent init(_ value: CGFloat)
}

extension UInt {
  @_transparent init(_ value: CGFloat)
}

extension Int {
  @_transparent init(_ value: CGFloat)
}

extension Double {
  @_transparent init(_ value: CGFloat)
}

extension Float {
  @_transparent init(_ value: CGFloat)
}

