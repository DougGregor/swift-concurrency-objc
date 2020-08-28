
struct CAMediaTimingFunctionName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 10.5, *)
class CAMediaTimingFunction : NSObject, NSSecureCoding {
  convenience init(name: CAMediaTimingFunctionName)
  init(controlPoints c1x: Float, _ c1y: Float, _ c2x: Float, _ c2y: Float)
  func getControlPoint(at idx: Int, values ptr: UnsafeMutablePointer<Float>)
}
extension CAMediaTimingFunctionName {
  @available(macOS 10.5, *)
  static let linear: CAMediaTimingFunctionName
  @available(macOS 10.5, *)
  static let easeIn: CAMediaTimingFunctionName
  @available(macOS 10.5, *)
  static let easeOut: CAMediaTimingFunctionName
  @available(macOS 10.5, *)
  static let easeInEaseOut: CAMediaTimingFunctionName
  @available(macOS 10.6, *)
  static let `default`: CAMediaTimingFunctionName
}
