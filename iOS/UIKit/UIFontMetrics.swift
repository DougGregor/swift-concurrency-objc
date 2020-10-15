
@available(iOS 11.0, *)
class UIFontMetrics : NSObject {
  class var `default`: UIFontMetrics { get }
  init(forTextStyle textStyle: UIFont.TextStyle)
  func scaledFont(for font: UIFont) -> UIFont
  func scaledFont(for font: UIFont, maximumPointSize: CGFloat) -> UIFont
  func scaledFont(for font: UIFont, compatibleWith traitCollection: UITraitCollection?) -> UIFont
  func scaledFont(for font: UIFont, maximumPointSize: CGFloat, compatibleWith traitCollection: UITraitCollection?) -> UIFont
  func scaledValue(for value: CGFloat) -> CGFloat
  func scaledValue(for value: CGFloat, compatibleWith traitCollection: UITraitCollection?) -> CGFloat
}
