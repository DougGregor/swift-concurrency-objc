
struct CAValueFunctionName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(tvOS 9.0, *)
class CAValueFunction : NSObject, NSSecureCoding {
  convenience init?(name: CAValueFunctionName)
  var name: CAValueFunctionName { get }
}
extension CAValueFunctionName {
  @available(tvOS 9.0, *)
  static let rotateX: CAValueFunctionName
  @available(tvOS 9.0, *)
  static let rotateY: CAValueFunctionName
  @available(tvOS 9.0, *)
  static let rotateZ: CAValueFunctionName
  @available(tvOS 9.0, *)
  static let scale: CAValueFunctionName
  @available(tvOS 9.0, *)
  static let scaleX: CAValueFunctionName
  @available(tvOS 9.0, *)
  static let scaleY: CAValueFunctionName
  @available(tvOS 9.0, *)
  static let scaleZ: CAValueFunctionName
  @available(tvOS 9.0, *)
  static let translate: CAValueFunctionName
  @available(tvOS 9.0, *)
  static let translateX: CAValueFunctionName
  @available(tvOS 9.0, *)
  static let translateY: CAValueFunctionName
  @available(tvOS 9.0, *)
  static let translateZ: CAValueFunctionName
}
