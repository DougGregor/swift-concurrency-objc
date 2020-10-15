
@available(iOS 2.0, *)
class UIPickerView : UIView, NSCoding {
  weak var dataSource: @sil_weak UIPickerViewDataSource?
  weak var delegate: @sil_weak UIPickerViewDelegate?
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "This property has no effect on iOS 7 and later.")
  var showsSelectionIndicator: Bool
  var numberOfComponents: Int { get }
  func numberOfRows(inComponent component: Int) -> Int
  func rowSize(forComponent component: Int) -> CGSize
  func view(forRow row: Int, forComponent component: Int) -> UIView?
  func reloadAllComponents()
  func reloadComponent(_ component: Int)
  func selectRow(_ row: Int, inComponent component: Int, animated: Bool)
  func selectedRow(inComponent component: Int) -> Int
}
protocol UIPickerViewDataSource : NSObjectProtocol {
  @available(iOS 2.0, *)
  func numberOfComponents(in pickerView: UIPickerView) -> Int
  @available(iOS 2.0, *)
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
}
protocol UIPickerViewDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
  @available(iOS 6.0, *)
  optional func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString?
  @available(iOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView
  @available(iOS 2.0, *)
  @asyncHandler optional func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
}
