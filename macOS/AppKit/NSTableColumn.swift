
extension NSTableColumn {
  struct ResizingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var autoresizingMask: NSTableColumn.ResizingOptions { get }
    static var userResizingMask: NSTableColumn.ResizingOptions { get }
  }
}
class NSTableColumn : NSObject, NSCoding, NSUserInterfaceItemIdentification {
  init(identifier: NSUserInterfaceItemIdentifier)
  weak var tableView: @sil_weak NSTableView?
  var width: CGFloat
  var minWidth: CGFloat
  var maxWidth: CGFloat
  var title: String
  var headerCell: NSTableHeaderCell
  var isEditable: Bool
  func sizeToFit()
  @NSCopying var sortDescriptorPrototype: NSSortDescriptor?
  var resizingMask: NSTableColumn.ResizingOptions
  @available(macOS 10.5, *)
  var headerToolTip: String?
  @available(macOS 10.5, *)
  var isHidden: Bool
}
extension NSTableColumn {
  var dataCell: Any
  func dataCell(forRow row: Int) -> Any
}
