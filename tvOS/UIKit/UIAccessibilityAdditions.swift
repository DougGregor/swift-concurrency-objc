
protocol UIScrollViewAccessibilityDelegate : UIScrollViewDelegate {
  @available(tvOS 2.0, *)
  optional func accessibilityScrollStatus(for scrollView: UIScrollView) -> String?
  @available(tvOS 11.0, *)
  optional func accessibilityAttributedScrollStatus(for scrollView: UIScrollView) -> NSAttributedString?
}
extension UIView {
  @available(tvOS 11.0, *)
  var accessibilityIgnoresInvertColors: Bool
}
extension UIColor {
  @available(tvOS 14.0, *)
  var accessibilityName: String { get }
}
