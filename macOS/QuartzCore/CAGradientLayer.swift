
struct CAGradientLayerType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 10.6, *)
class CAGradientLayer : CALayer {
  var colors: [Any]?
  var locations: [NSNumber]?
  var startPoint: CGPoint
  var endPoint: CGPoint
  var type: CAGradientLayerType
}
extension CAGradientLayerType {
  @available(macOS 10.6, *)
  static let axial: CAGradientLayerType
  @available(macOS 10.6, *)
  static let radial: CAGradientLayerType
  @available(macOS 10.14, *)
  static let conic: CAGradientLayerType
}
