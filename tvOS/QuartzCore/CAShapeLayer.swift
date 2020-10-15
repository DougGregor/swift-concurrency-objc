
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
@available(tvOS 9.0, *)
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
  @available(tvOS 9.0, *)
  static let nonZero: CAShapeLayerFillRule
  @available(tvOS 9.0, *)
  static let evenOdd: CAShapeLayerFillRule
}
extension CAShapeLayerLineJoin {
  @available(tvOS 9.0, *)
  static let miter: CAShapeLayerLineJoin
  @available(tvOS 9.0, *)
  static let round: CAShapeLayerLineJoin
  @available(tvOS 9.0, *)
  static let bevel: CAShapeLayerLineJoin
}
extension CAShapeLayerLineCap {
  @available(tvOS 9.0, *)
  static let butt: CAShapeLayerLineCap
  @available(tvOS 9.0, *)
  static let round: CAShapeLayerLineCap
  @available(tvOS 9.0, *)
  static let square: CAShapeLayerLineCap
}
