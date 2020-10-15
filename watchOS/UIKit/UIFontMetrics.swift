
@available(watchOS 4.0, *)
class UIFontMetrics : NSObject {
  class var `default`: UIFontMetrics { get }
  init(forTextStyle textStyle: UIFont.TextStyle)
  func scaledFont(for font: UIFont) -> UIFont
  func scaledFont(for font: UIFont, maximumPointSize: CGFloat) -> UIFont
  func scaledValue(for value: CGFloat) -> CGFloat
}
