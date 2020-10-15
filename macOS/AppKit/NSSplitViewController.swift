
extension NSSplitViewController {
  @available(macOS 10.11, *)
  class let automaticDimension: CGFloat
}
@available(macOS 10.10, *)
class NSSplitViewController : NSViewController, NSSplitViewDelegate, NSUserInterfaceValidations {
  var splitView: NSSplitView
  var splitViewItems: [NSSplitViewItem]
  func addSplitViewItem(_ splitViewItem: NSSplitViewItem)
  func insertSplitViewItem(_ splitViewItem: NSSplitViewItem, at index: Int)
  func removeSplitViewItem(_ splitViewItem: NSSplitViewItem)
  func splitViewItem(for viewController: NSViewController) -> NSSplitViewItem?
  @available(macOS 10.11, *)
  var minimumThicknessForInlineSidebars: CGFloat
}
extension NSSplitViewController {
  @available(macOS 10.11, *)
  @IBAction func toggleSidebar(_ sender: Any?)
}
