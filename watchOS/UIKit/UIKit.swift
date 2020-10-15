
@available(swift, deprecated: 4.2, message: "Use == operator instead.")
func UIEdgeInsetsEqualToEdgeInsets(_ insets1: UIEdgeInsets, _ insets2: UIEdgeInsets) -> Bool

@available(swift, deprecated: 4.2, message: "Use == operator instead.")
func UIOffsetEqualToOffset(_ offset1: UIOffset, _ offset2: UIOffset) -> Bool

typealias _ColorLiteralType = UIColor

typealias _ImageLiteralType = UIImage

@available(swift 4)
protocol _UIKitNumericRawRepresentable : Comparable, RawRepresentable where Self.RawValue : Comparable, Self.RawValue : Numeric {
}

extension _UIKitNumericRawRepresentable {
  static func < (lhs: Self, rhs: Self) -> Bool
  static func + (lhs: Self, rhs: Self.RawValue) -> Self
  static func + (lhs: Self.RawValue, rhs: Self) -> Self
  static func - (lhs: Self, rhs: Self.RawValue) -> Self
  static func - (lhs: Self, rhs: Self) -> Self.RawValue
  static func += (lhs: inout Self, rhs: Self.RawValue)
  static func -= (lhs: inout Self, rhs: Self.RawValue)
}

extension UIEdgeInsets : Equatable {
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets : Equatable {
}

extension UIOffset : Equatable {
}

extension UIEdgeInsets : Codable {
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets : Codable {
}

extension UIOffset : Codable {
}

extension UIFont.Weight : _UIKitNumericRawRepresentable {
}

extension UIColor : _ExpressibleByColorLiteral {
}

extension UIImage : _ExpressibleByImageLiteral {
}

extension UIFont.TextStyle {
  @available(iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  var metrics: UIFontMetrics { get }
}

extension UIAccessibilityTraits : OptionSet {
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension UIImage {
  var baselineOffsetFromBottom: CGFloat? { get }
}

extension IndexPath {
  init(row: Int, section: Int)
  var section: Int
  var row: Int
}

extension IndexPath {
  init(item: Int, section: Int)
  var item: Int
}

extension URLResourceValues {
  @available(iOS 8.0, *)
  var thumbnailDictionary: [URLThumbnailDictionaryItem : UIImage]? { get }
}

extension UIEdgeInsets : _ObjectiveCBridgeable {
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets : _ObjectiveCBridgeable {
}

extension UIOffset : _ObjectiveCBridgeable {
}

