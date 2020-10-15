
struct CAMediaTimingFunctionName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 2.0, *)
class CAMediaTimingFunction : NSObject, NSSecureCoding {
  convenience init(name: CAMediaTimingFunctionName)
  init(controlPoints c1x: Float, _ c1y: Float, _ c2x: Float, _ c2y: Float)
  func getControlPoint(at idx: Int, values ptr: UnsafeMutablePointer<Float>)
}
extension CAMediaTimingFunctionName {
  @available(iOS 2.0, *)
  static let linear: CAMediaTimingFunctionName
  @available(iOS 2.0, *)
  static let easeIn: CAMediaTimingFunctionName
  @available(iOS 2.0, *)
  static let easeOut: CAMediaTimingFunctionName
  @available(iOS 2.0, *)
  static let easeInEaseOut: CAMediaTimingFunctionName
  @available(iOS 3.0, *)
  static let `default`: CAMediaTimingFunctionName
}
