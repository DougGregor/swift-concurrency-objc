
protocol UIPickerViewAccessibilityDelegate : UIPickerViewDelegate {
  @available(tvOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, accessibilityLabelForComponent component: Int) -> String?
  @available(tvOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, accessibilityHintForComponent component: Int) -> String?
  @available(tvOS 13.0, *)
  optional func pickerView(_ pickerView: UIPickerView, accessibilityUserInputLabelsForComponent component: Int) -> [String]
  @available(tvOS 11.0, *)
  optional func pickerView(_ pickerView: UIPickerView, accessibilityAttributedLabelForComponent component: Int) -> NSAttributedString?
  @available(tvOS 11.0, *)
  optional func pickerView(_ pickerView: UIPickerView, accessibilityAttributedHintForComponent component: Int) -> NSAttributedString?
  @available(tvOS 13.0, *)
  optional func pickerView(_ pickerView: UIPickerView, accessibilityAttributedUserInputLabelsForComponent component: Int) -> [NSAttributedString]
}
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
