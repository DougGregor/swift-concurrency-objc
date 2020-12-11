
extension NSComboBox {
  class let willPopUpNotification: NSNotification.Name
  class let willDismissNotification: NSNotification.Name
  class let selectionDidChangeNotification: NSNotification.Name
  class let selectionIsChangingNotification: NSNotification.Name
}
protocol NSComboBoxDataSource : NSObjectProtocol {
  optional func numberOfItems(in comboBox: NSComboBox) -> Int
  optional func comboBox(_ comboBox: NSComboBox, objectValueForItemAt index: Int) -> Any?
  optional func comboBox(_ comboBox: NSComboBox, indexOfItemWithStringValue string: String) -> Int
  optional func comboBox(_ comboBox: NSComboBox, completedString string: String) -> String?
}
protocol NSComboBoxDelegate : NSTextFieldDelegate {
  optional func comboBoxWillPopUp(_ notification: Notification)
  optional func comboBoxWillDismiss(_ notification: Notification)
  optional func comboBoxSelectionDidChange(_ notification: Notification)
  optional func comboBoxSelectionIsChanging(_ notification: Notification)
}
class NSComboBox : NSTextField {
  var hasVerticalScroller: Bool
  var intercellSpacing: NSSize
  var itemHeight: CGFloat
  var numberOfVisibleItems: Int
  var isButtonBordered: Bool
  func reloadData()
  func noteNumberOfItemsChanged()
  var usesDataSource: Bool
  func scrollItemAtIndexToTop(_ index: Int)
  func scrollItemAtIndexToVisible(_ index: Int)
  func selectItem(at index: Int)
  func deselectItem(at index: Int)
  var indexOfSelectedItem: Int { get }
  var numberOfItems: Int { get }
  var completes: Bool
  unowned(unsafe) var dataSource: @sil_unmanaged NSComboBoxDataSource?
  func addItem(withObjectValue object: Any)
  func addItems(withObjectValues objects: [Any])
  func insertItem(withObjectValue object: Any, at index: Int)
  func removeItem(withObjectValue object: Any)
  func removeItem(at index: Int)
  func removeAllItems()
  func selectItem(withObjectValue object: Any?)
  func itemObjectValue(at index: Int) -> Any
  var objectValueOfSelectedItem: Any? { get }
  func indexOfItem(withObjectValue object: Any) -> Int
  var objectValues: [Any] { get }
}
