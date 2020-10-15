
@available(macOS 11.0, *)
class NSTrackingSeparatorToolbarItem : NSToolbarItem {
  convenience init(identifier: NSToolbarItem.Identifier, splitView: NSSplitView, dividerIndex: Int)
  var splitView: NSSplitView
  var dividerIndex: Int
}
