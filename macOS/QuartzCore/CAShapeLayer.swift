
struct CAShapeLayerFillRule : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CAShapeLayerLineJoin : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct CAShapeLayerLineCap : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 10.6, *)
class CAShapeLayer : CALayer {
  var path: CGPath?
  var fillColor: CGColor?
  var fillRule: CAShapeLayerFillRule
  var strokeColor: CGColor?
  var strokeStart: CGFloat
  var strokeEnd: CGFloat
  var lineWidth: CGFloat
  var miterLimit: CGFloat
  var lineCap: CAShapeLayerLineCap
  var lineJoin: CAShapeLayerLineJoin
  var lineDashPhase: CGFloat
  var lineDashPattern: [NSNumber]?
}
extension CAShapeLayerFillRule {
  @available(macOS 10.6, *)
  static let nonZero: CAShapeLayerFillRule
  @available(macOS 10.6, *)
  static let evenOdd: CAShapeLayerFillRule
}
extension CAShapeLayerLineJoin {
  @available(macOS 10.6, *)
  static let miter: CAShapeLayerLineJoin
  @available(macOS 10.6, *)
  static let round: CAShapeLayerLineJoin
  @available(macOS 10.6, *)
  static let bevel: CAShapeLayerLineJoin
}
extension CAShapeLayerLineCap {
  @available(macOS 10.6, *)
  static let butt: CAShapeLayerLineCap
  @available(macOS 10.6, *)
  static let round: CAShapeLayerLineCap
  @available(macOS 10.6, *)
  static let square: CAShapeLayerLineCap
}
