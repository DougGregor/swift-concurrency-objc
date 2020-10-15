
struct CAValueFunctionName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 10.6, *)
class CAValueFunction : NSObject, NSSecureCoding {
  convenience init?(name: CAValueFunctionName)
  var name: CAValueFunctionName { get }
}
extension CAValueFunctionName {
  @available(macOS 10.6, *)
  static let rotateX: CAValueFunctionName
  @available(macOS 10.6, *)
  static let rotateY: CAValueFunctionName
  @available(macOS 10.6, *)
  static let rotateZ: CAValueFunctionName
  @available(macOS 10.6, *)
  static let scale: CAValueFunctionName
  @available(macOS 10.6, *)
  static let scaleX: CAValueFunctionName
  @available(macOS 10.6, *)
  static let scaleY: CAValueFunctionName
  @available(macOS 10.6, *)
  static let scaleZ: CAValueFunctionName
  @available(macOS 10.6, *)
  static let translate: CAValueFunctionName
  @available(macOS 10.6, *)
  static let translateX: CAValueFunctionName
  @available(macOS 10.6, *)
  static let translateY: CAValueFunctionName
  @available(macOS 10.6, *)
  static let translateZ: CAValueFunctionName
}
