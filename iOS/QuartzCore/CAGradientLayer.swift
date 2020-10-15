
struct CAGradientLayerType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 3.0, *)
class CAGradientLayer : CALayer {
  var colors: [Any]?
  var locations: [NSNumber]?
  var startPoint: CGPoint
  var endPoint: CGPoint
  var type: CAGradientLayerType
}
extension CAGradientLayerType {
  @available(iOS 3.0, *)
  static let axial: CAGradientLayerType
  @available(iOS 3.2, *)
  static let radial: CAGradientLayerType
  @available(iOS 12.0, *)
  static let conic: CAGradientLayerType
}
