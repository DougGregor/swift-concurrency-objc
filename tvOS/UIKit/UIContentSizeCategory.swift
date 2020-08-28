
@available(tvOS 7.0, *)
struct UIContentSizeCategory : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}

extension UIContentSizeCategory {
  @available(iOS 11.0, tvOS 11.0, *)
  var isAccessibilityCategory: Bool { get }
  @available(iOS 11.0, tvOS 11.0, *)
  static func < (left: UIContentSizeCategory, right: UIContentSizeCategory) -> Bool
  @available(iOS 11.0, tvOS 11.0, *)
  static func <= (left: UIContentSizeCategory, right: UIContentSizeCategory) -> Bool
  @available(iOS 11.0, tvOS 11.0, *)
  static func > (left: UIContentSizeCategory, right: UIContentSizeCategory) -> Bool
  @available(iOS 11.0, tvOS 11.0, *)
  static func >= (left: UIContentSizeCategory, right: UIContentSizeCategory) -> Bool
}
extension UIContentSizeCategory {
  @available(tvOS 10.0, *)
  static let unspecified: UIContentSizeCategory
  @available(tvOS 7.0, *)
  static let extraSmall: UIContentSizeCategory
  @available(tvOS 7.0, *)
  static let small: UIContentSizeCategory
  @available(tvOS 7.0, *)
  static let medium: UIContentSizeCategory
  @available(tvOS 7.0, *)
  static let large: UIContentSizeCategory
  @available(tvOS 7.0, *)
  static let extraLarge: UIContentSizeCategory
  @available(tvOS 7.0, *)
  static let extraExtraLarge: UIContentSizeCategory
  @available(tvOS 7.0, *)
  static let extraExtraExtraLarge: UIContentSizeCategory
  @available(tvOS 7.0, *)
  static let accessibilityMedium: UIContentSizeCategory
  @available(tvOS 7.0, *)
  static let accessibilityLarge: UIContentSizeCategory
  @available(tvOS 7.0, *)
  static let accessibilityExtraLarge: UIContentSizeCategory
  @available(tvOS 7.0, *)
  static let accessibilityExtraExtraLarge: UIContentSizeCategory
  @available(tvOS 7.0, *)
  static let accessibilityExtraExtraExtraLarge: UIContentSizeCategory
  @available(tvOS 7.0, *)
  static let didChangeNotification: NSNotification.Name
  @available(tvOS 7.0, *)
  static let newValueUserInfoKey: String
}
@available(tvOS 11.0, *)
func __UIContentSizeCategoryIsAccessibilityCategory(_ category: UIContentSizeCategory) -> Bool
@available(tvOS 11.0, *)
func __UIContentSizeCategoryCompareToCategory(_ lhs: UIContentSizeCategory, _ rhs: UIContentSizeCategory) -> ComparisonResult
