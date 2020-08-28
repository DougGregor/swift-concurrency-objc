
class NSComboBoxCell : NSTextFieldCell {
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
  func completedString(_ string: String) -> String?
  unowned(unsafe) var dataSource: @sil_unmanaged NSComboBoxCellDataSource?
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
protocol NSComboBoxCellDataSource : NSObjectProtocol {
  optional func numberOfItems(in comboBoxCell: NSComboBoxCell) -> Int
  optional func comboBoxCell(_ comboBoxCell: NSComboBoxCell, objectValueForItemAt index: Int) -> Any
  optional func comboBoxCell(_ comboBoxCell: NSComboBoxCell, indexOfItemWithStringValue string: String) -> Int
  optional func comboBoxCell(_ comboBoxCell: NSComboBoxCell, completedString uncompletedString: String) -> String?
}
