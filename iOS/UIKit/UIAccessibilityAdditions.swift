
protocol UIPickerViewAccessibilityDelegate : UIPickerViewDelegate {
  @available(iOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, accessibilityLabelForComponent component: Int) -> String?
  @available(iOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, accessibilityHintForComponent component: Int) -> String?
  @available(iOS 13.0, *)
  optional func pickerView(_ pickerView: UIPickerView, accessibilityUserInputLabelsForComponent component: Int) -> [String]
  @available(iOS 11.0, *)
  optional func pickerView(_ pickerView: UIPickerView, accessibilityAttributedLabelForComponent component: Int) -> NSAttributedString?
  @available(iOS 11.0, *)
  optional func pickerView(_ pickerView: UIPickerView, accessibilityAttributedHintForComponent component: Int) -> NSAttributedString?
  @available(iOS 13.0, *)
  optional func pickerView(_ pickerView: UIPickerView, accessibilityAttributedUserInputLabelsForComponent component: Int) -> [NSAttributedString]
}
protocol UIScrollViewAccessibilityDelegate : UIScrollViewDelegate {
  @available(iOS 2.0, *)
  optional func accessibilityScrollStatus(for scrollView: UIScrollView) -> String?
  @available(iOS 11.0, *)
  optional func accessibilityAttributedScrollStatus(for scrollView: UIScrollView) -> NSAttributedString?
}
extension UIView {
  @available(iOS 11.0, *)
  var accessibilityIgnoresInvertColors: Bool
}
extension UIColor {
  @available(iOS 14.0, *)
  var accessibilityName: String { get }
}
