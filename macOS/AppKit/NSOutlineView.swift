
var NSOutlineViewDropOnItemIndex: Int { get }
class NSOutlineView : NSTableView, NSAccessibilityOutline {
  unowned(unsafe) var outlineTableColumn: @sil_unmanaged NSTableColumn?
  func isExpandable(_ item: Any?) -> Bool
  @available(macOS 10.10, *)
  func numberOfChildren(ofItem item: Any?) -> Int
  @available(macOS 10.10, *)
  func child(_ index: Int, ofItem item: Any?) -> Any?
  func expandItem(_ item: Any?, expandChildren: Bool)
  func expandItem(_ item: Any?)
  func collapseItem(_ item: Any?, collapseChildren: Bool)
  func collapseItem(_ item: Any?)
  func reloadItem(_ item: Any?, reloadChildren: Bool)
  func reloadItem(_ item: Any?)
  func parent(forItem item: Any?) -> Any?
  @available(macOS 10.11, *)
  func childIndex(forItem item: Any) -> Int
  func item(atRow row: Int) -> Any?
  func row(forItem item: Any?) -> Int
  func level(forItem item: Any?) -> Int
  func level(forRow row: Int) -> Int
  func isItemExpanded(_ item: Any?) -> Bool
  var indentationPerLevel: CGFloat
  var indentationMarkerFollowsCell: Bool
  var autoresizesOutlineColumn: Bool
  @available(macOS 10.5, *)
  func frameOfOutlineCell(atRow row: Int) -> NSRect
  func setDropItem(_ item: Any?, dropChildIndex index: Int)
  func shouldCollapseAutoExpandedItems(forDeposited deposited: Bool) -> Bool
  var autosaveExpandedItems: Bool
  @available(macOS 10.7, *)
  func insertItems(at indexes: IndexSet, inParent parent: Any?, withAnimation animationOptions: NSTableView.AnimationOptions = [])
  @available(macOS 10.7, *)
  func removeItems(at indexes: IndexSet, inParent parent: Any?, withAnimation animationOptions: NSTableView.AnimationOptions = [])
  @available(macOS 10.7, *)
  func moveItem(at fromIndex: Int, inParent oldParent: Any?, to toIndex: Int, inParent newParent: Any?)
  @available(macOS 10.12, *)
  var stronglyReferencesItems: Bool
}
protocol NSOutlineViewDataSource : NSObjectProtocol {
  optional func outlineView(_ outlineView: NSOutlineView, numberOfChildrenOfItem item: Any?) -> Int
  optional func outlineView(_ outlineView: NSOutlineView, child index: Int, ofItem item: Any?) -> Any
  optional func outlineView(_ outlineView: NSOutlineView, isItemExpandable item: Any) -> Bool
  optional func outlineView(_ outlineView: NSOutlineView, objectValueFor tableColumn: NSTableColumn?, byItem item: Any?) -> Any?
  optional func outlineView(_ outlineView: NSOutlineView, setObjectValue object: Any?, for tableColumn: NSTableColumn?, byItem item: Any?)
  optional func outlineView(_ outlineView: NSOutlineView, itemForPersistentObject object: Any) -> Any?
  optional func outlineView(_ outlineView: NSOutlineView, persistentObjectForItem item: Any?) -> Any?
  optional func outlineView(_ outlineView: NSOutlineView, sortDescriptorsDidChange oldDescriptors: [NSSortDescriptor])
  @available(macOS 10.7, *)
  optional func outlineView(_ outlineView: NSOutlineView, pasteboardWriterForItem item: Any) -> NSPasteboardWriting?
  @available(macOS 10.7, *)
  optional func outlineView(_ outlineView: NSOutlineView, draggingSession session: NSDraggingSession, willBeginAt screenPoint: NSPoint, forItems draggedItems: [Any])
  @available(macOS 10.7, *)
  optional func outlineView(_ outlineView: NSOutlineView, draggingSession session: NSDraggingSession, endedAt screenPoint: NSPoint, operation: NSDragOperation)
  @available(macOS, introduced: 10.0, deprecated: 10.15, message: "Use -outlineView:pasteboardWriterForItem: instead")
  optional func outlineView(_ outlineView: NSOutlineView, writeItems items: [Any], to pasteboard: NSPasteboard) -> Bool
  @available(macOS 10.7, *)
  optional func outlineView(_ outlineView: NSOutlineView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  optional func outlineView(_ outlineView: NSOutlineView, validateDrop info: NSDraggingInfo, proposedItem item: Any?, proposedChildIndex index: Int) -> NSDragOperation
  optional func outlineView(_ outlineView: NSOutlineView, acceptDrop info: NSDraggingInfo, item: Any?, childIndex index: Int) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Use NSFilePromiseReceiver objects instead")
  optional func outlineView(_ outlineView: NSOutlineView, namesOfPromisedFilesDroppedAtDestination dropDestination: URL, forDraggedItems items: [Any]) -> [String]
}
protocol NSOutlineViewDelegate : NSControlTextEditingDelegate {
  @available(macOS 10.7, *)
  optional func outlineView(_ outlineView: NSOutlineView, viewFor tableColumn: NSTableColumn?, item: Any) -> NSView?
  @available(macOS 10.7, *)
  optional func outlineView(_ outlineView: NSOutlineView, rowViewForItem item: Any) -> NSTableRowView?
  @available(macOS 10.7, *)
  @asyncHandler optional func outlineView(_ outlineView: NSOutlineView, didAdd rowView: NSTableRowView, forRow row: Int)
  @available(macOS 10.7, *)
  @asyncHandler optional func outlineView(_ outlineView: NSOutlineView, didRemove rowView: NSTableRowView, forRow row: Int)
  optional func outlineView(_ outlineView: NSOutlineView, willDisplayCell cell: Any, for tableColumn: NSTableColumn?, item: Any)
  optional func outlineView(_ outlineView: NSOutlineView, shouldEdit tableColumn: NSTableColumn?, item: Any) -> Bool
  optional func selectionShouldChange(in outlineView: NSOutlineView) -> Bool
  optional func outlineView(_ outlineView: NSOutlineView, shouldSelectItem item: Any) -> Bool
  @available(macOS 10.5, *)
  optional func outlineView(_ outlineView: NSOutlineView, selectionIndexesForProposedSelection proposedSelectionIndexes: IndexSet) -> IndexSet
  optional func outlineView(_ outlineView: NSOutlineView, shouldSelect tableColumn: NSTableColumn?) -> Bool
  optional func outlineView(_ outlineView: NSOutlineView, mouseDownInHeaderOf tableColumn: NSTableColumn)
  @asyncHandler optional func outlineView(_ outlineView: NSOutlineView, didClick tableColumn: NSTableColumn)
  @asyncHandler optional func outlineView(_ outlineView: NSOutlineView, didDrag tableColumn: NSTableColumn)
  optional func outlineView(_ outlineView: NSOutlineView, toolTipFor cell: NSCell, rect: NSRectPointer, tableColumn: NSTableColumn?, item: Any, mouseLocation: NSPoint) -> String
  optional func outlineView(_ outlineView: NSOutlineView, heightOfRowByItem item: Any) -> CGFloat
  @available(macOS 11.0, *)
  optional func outlineView(_ outlineView: NSOutlineView, tintConfigurationForItem item: Any) -> NSTintConfiguration?
  @available(macOS 10.5, *)
  optional func outlineView(_ outlineView: NSOutlineView, typeSelectStringFor tableColumn: NSTableColumn?, item: Any) -> String?
  @available(macOS 10.5, *)
  optional func outlineView(_ outlineView: NSOutlineView, nextTypeSelectMatchFromItem startItem: Any, toItem endItem: Any, for searchString: String) -> Any?
  @available(macOS 10.5, *)
  optional func outlineView(_ outlineView: NSOutlineView, shouldTypeSelectFor event: NSEvent, withCurrentSearch searchString: String?) -> Bool
  @available(macOS 10.5, *)
  optional func outlineView(_ outlineView: NSOutlineView, shouldShowCellExpansionFor tableColumn: NSTableColumn?, item: Any) -> Bool
  @available(macOS 10.5, *)
  optional func outlineView(_ outlineView: NSOutlineView, shouldTrackCell cell: NSCell, for tableColumn: NSTableColumn?, item: Any) -> Bool
  @available(macOS 10.5, *)
  optional func outlineView(_ outlineView: NSOutlineView, dataCellFor tableColumn: NSTableColumn?, item: Any) -> NSCell?
  @available(macOS 10.5, *)
  optional func outlineView(_ outlineView: NSOutlineView, isGroupItem item: Any) -> Bool
  optional func outlineView(_ outlineView: NSOutlineView, shouldExpandItem item: Any) -> Bool
  optional func outlineView(_ outlineView: NSOutlineView, shouldCollapseItem item: Any) -> Bool
  optional func outlineView(_ outlineView: NSOutlineView, willDisplayOutlineCell cell: Any, for tableColumn: NSTableColumn?, item: Any)
  @available(macOS 10.6, *)
  optional func outlineView(_ outlineView: NSOutlineView, sizeToFitWidthOfColumn column: Int) -> CGFloat
  @available(macOS 10.6, *)
  optional func outlineView(_ outlineView: NSOutlineView, shouldReorderColumn columnIndex: Int, toColumn newColumnIndex: Int) -> Bool
  @available(macOS 10.6, *)
  optional func outlineView(_ outlineView: NSOutlineView, shouldShowOutlineCellForItem item: Any) -> Bool
  @asyncHandler optional func outlineViewSelectionDidChange(_ notification: Notification)
  @asyncHandler optional func outlineViewColumnDidMove(_ notification: Notification)
  @asyncHandler optional func outlineViewColumnDidResize(_ notification: Notification)
  optional func outlineViewSelectionIsChanging(_ notification: Notification)
  optional func outlineViewItemWillExpand(_ notification: Notification)
  @asyncHandler optional func outlineViewItemDidExpand(_ notification: Notification)
  optional func outlineViewItemWillCollapse(_ notification: Notification)
  @asyncHandler optional func outlineViewItemDidCollapse(_ notification: Notification)
}
extension NSOutlineView {
  @available(macOS 10.9, *)
  class let disclosureButtonIdentifier: NSUserInterfaceItemIdentifier
  @available(macOS 10.9, *)
  class let showHideButtonIdentifier: NSUserInterfaceItemIdentifier
  class let selectionDidChangeNotification: NSNotification.Name
  class let columnDidMoveNotification: NSNotification.Name
  class let columnDidResizeNotification: NSNotification.Name
  class let selectionIsChangingNotification: NSNotification.Name
  class let itemWillExpandNotification: NSNotification.Name
  class let itemDidExpandNotification: NSNotification.Name
  class let itemWillCollapseNotification: NSNotification.Name
  class let itemDidCollapseNotification: NSNotification.Name
}
