
class NSTableHeaderView : NSView, NSViewToolTipOwner {
  weak var tableView: @sil_weak NSTableView?
  var draggedColumn: Int { get }
  var draggedDistance: CGFloat { get }
  var resizedColumn: Int { get }
  func headerRect(ofColumn column: Int) -> NSRect
  func column(at point: NSPoint) -> Int
}
