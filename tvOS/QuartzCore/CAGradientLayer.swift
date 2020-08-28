
struct CAGradientLayerType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(tvOS 9.0, *)
class CAGradientLayer : CALayer {
  var colors: [Any]?
  var locations: [NSNumber]?
  var startPoint: CGPoint
  var endPoint: CGPoint
  var type: CAGradientLayerType
}
extension CAGradientLayerType {
  @available(tvOS 9.0, *)
  static let axial: CAGradientLayerType
  @available(tvOS 9.0, *)
  static let radial: CAGradientLayerType
  @available(tvOS 12.0, *)
  static let conic: CAGradientLayerType
}
