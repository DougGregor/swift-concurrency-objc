
struct CAValueFunctionName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 3.0, *)
class CAValueFunction : NSObject, NSSecureCoding {
  convenience init?(name: CAValueFunctionName)
  var name: CAValueFunctionName { get }
}
extension CAValueFunctionName {
  @available(iOS 3.0, *)
  static let rotateX: CAValueFunctionName
  @available(iOS 3.0, *)
  static let rotateY: CAValueFunctionName
  @available(iOS 3.0, *)
  static let rotateZ: CAValueFunctionName
  @available(iOS 3.0, *)
  static let scale: CAValueFunctionName
  @available(iOS 3.0, *)
  static let scaleX: CAValueFunctionName
  @available(iOS 3.0, *)
  static let scaleY: CAValueFunctionName
  @available(iOS 3.0, *)
  static let scaleZ: CAValueFunctionName
  @available(iOS 3.0, *)
  static let translate: CAValueFunctionName
  @available(iOS 3.0, *)
  static let translateX: CAValueFunctionName
  @available(iOS 3.0, *)
  static let translateY: CAValueFunctionName
  @available(iOS 3.0, *)
  static let translateZ: CAValueFunctionName
}
