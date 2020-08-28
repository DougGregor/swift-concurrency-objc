
@available(iOS 14.0, *)
struct UIConfigurationStateCustomKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 14.0, *)
protocol __UIConfigurationState : NSCopying, NSSecureCoding, NSObjectProtocol {
  init(traitCollection: UITraitCollection)
  var traitCollection: UITraitCollection { get set }
  func customState(forKey key: UIConfigurationStateCustomKey) -> Any?
  func setCustom(_ customState: Any?, forKey key: UIConfigurationStateCustomKey)
  subscript(key: UIConfigurationStateCustomKey) -> Any? { get set }
}
