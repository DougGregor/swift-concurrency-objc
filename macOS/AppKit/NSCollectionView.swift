
extension NSCollectionView {
  @available(macOS 10.6, *)
  enum DropOperation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case on
    case before
  }
  struct ScrollPosition : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var top: NSCollectionView.ScrollPosition { get }
    static var centeredVertically: NSCollectionView.ScrollPosition { get }
    static var bottom: NSCollectionView.ScrollPosition { get }
    static var nearestHorizontalEdge: NSCollectionView.ScrollPosition { get }
    static var left: NSCollectionView.ScrollPosition { get }
    static var centeredHorizontally: NSCollectionView.ScrollPosition { get }
    static var right: NSCollectionView.ScrollPosition { get }
    static var leadingEdge: NSCollectionView.ScrollPosition { get }
    static var trailingEdge: NSCollectionView.ScrollPosition { get }
    static var nearestVerticalEdge: NSCollectionView.ScrollPosition { get }
  }
  typealias SupplementaryElementKind = String
}
extension NSCollectionViewItem {
  @available(macOS 10.11, *)
  enum HighlightState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case forSelection
    case forDeselection
    case asDropTarget
  }
}
protocol NSCollectionViewElement : NSUserInterfaceItemIdentification, NSObjectProtocol {
  @available(macOS 10.11, *)
  optional func prepareForReuse()
  @available(macOS 10.11, *)
  optional func apply(_ layoutAttributes: NSCollectionViewLayoutAttributes)
  @available(macOS 10.11, *)
  optional func willTransition(from oldLayout: NSCollectionViewLayout, to newLayout: NSCollectionViewLayout)
  @available(macOS 10.11, *)
  @asyncHandler optional func didTransition(from oldLayout: NSCollectionViewLayout, to newLayout: NSCollectionViewLayout)
  @available(macOS 10.11, *)
  optional func preferredLayoutAttributesFitting(_ layoutAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutAttributes
}
protocol NSCollectionViewSectionHeaderView : NSCollectionViewElement {
  @available(macOS 10.12, *)
  @IBOutlet weak optional var sectionCollapseButton: @sil_weak NSButton? { get set }
}
@available(macOS 10.5, *)
class NSCollectionViewItem : NSViewController, NSCopying, NSCollectionViewElement {
  weak var collectionView: @sil_weak NSCollectionView? { get }
  var isSelected: Bool
  @available(macOS 10.11, *)
  var highlightState: NSCollectionViewItem.HighlightState
  @available(macOS 10.7, *)
  @IBOutlet weak var imageView: @sil_weak NSImageView?
  @available(macOS 10.7, *)
  @IBOutlet weak var textField: @sil_weak NSTextField?
  @available(macOS 10.7, *)
  var draggingImageComponents: [NSDraggingImageComponent] { get }
}
@available(macOS 10.5, *)
class NSCollectionView : NSView, NSDraggingSource, NSDraggingDestination {
  @available(macOS 10.11, *)
  weak var dataSource: @sil_weak NSCollectionViewDataSource?
  @available(macOS 10.13, *)
  weak var prefetchDataSource: @sil_weak NSCollectionViewPrefetching?
  var content: [Any]
  @available(macOS 10.11, *)
  func reloadData()
  weak var delegate: @sil_weak NSCollectionViewDelegate?
  @available(macOS 10.11, *)
  var backgroundView: NSView?
  @available(macOS 10.12, *)
  var backgroundViewScrollsWithContent: Bool
  @available(macOS 10.11, *)
  var collectionViewLayout: NSCollectionViewLayout?
  @available(macOS 10.11, *)
  func layoutAttributesForItem(at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  @available(macOS 10.11, *)
  func layoutAttributesForSupplementaryElement(ofKind kind: NSCollectionView.SupplementaryElementKind, at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  @available(macOS 10.6, *)
  func frameForItem(at index: Int) -> NSRect
  @available(macOS 10.7, *)
  func frameForItem(at index: Int, withNumberOfItems numberOfItems: Int) -> NSRect
  var backgroundColors: [NSColor]!
  @available(macOS 10.11, *)
  var numberOfSections: Int { get }
  @available(macOS 10.11, *)
  func numberOfItems(inSection section: Int) -> Int
  var isFirstResponder: Bool { get }
  var isSelectable: Bool
  @available(macOS 10.11, *)
  var allowsEmptySelection: Bool
  var allowsMultipleSelection: Bool
  var selectionIndexes: IndexSet
  @available(macOS 10.11, *)
  var selectionIndexPaths: Set<IndexPath>
  @available(macOS 10.11, *)
  func selectItems(at indexPaths: Set<IndexPath>, scrollPosition: NSCollectionView.ScrollPosition)
  @available(macOS 10.11, *)
  func deselectItems(at indexPaths: Set<IndexPath>)
  @IBAction func deselectAll(_ sender: Any?)
  @available(macOS 10.11, *)
  func register(_ itemClass: AnyClass?, forItemWithIdentifier identifier: NSUserInterfaceItemIdentifier)
  @available(macOS 10.11, *)
  func register(_ nib: NSNib?, forItemWithIdentifier identifier: NSUserInterfaceItemIdentifier)
  @available(macOS 10.11, *)
  func register(_ viewClass: AnyClass?, forSupplementaryViewOfKind kind: NSCollectionView.SupplementaryElementKind, withIdentifier identifier: NSUserInterfaceItemIdentifier)
  @available(macOS 10.11, *)
  func register(_ nib: NSNib?, forSupplementaryViewOfKind kind: NSCollectionView.SupplementaryElementKind, withIdentifier identifier: NSUserInterfaceItemIdentifier)
  @available(macOS 10.11, *)
  func makeItem(withIdentifier identifier: NSUserInterfaceItemIdentifier, for indexPath: IndexPath) -> NSCollectionViewItem
  @available(macOS 10.11, *)
  func makeSupplementaryView(ofKind elementKind: NSCollectionView.SupplementaryElementKind, withIdentifier identifier: NSUserInterfaceItemIdentifier, for indexPath: IndexPath) -> NSView
  @available(macOS 10.6, *)
  func item(at index: Int) -> NSCollectionViewItem?
  @available(macOS 10.11, *)
  func item(at indexPath: IndexPath) -> NSCollectionViewItem?
  @available(macOS 10.11, *)
  func visibleItems() -> [NSCollectionViewItem]
  @available(macOS 10.11, *)
  func indexPathsForVisibleItems() -> Set<IndexPath>
  @available(macOS 10.11, *)
  func indexPath(for item: NSCollectionViewItem) -> IndexPath?
  @available(macOS 10.11, *)
  func indexPathForItem(at point: NSPoint) -> IndexPath?
  @available(macOS 10.11, *)
  func supplementaryView(forElementKind elementKind: NSCollectionView.SupplementaryElementKind, at indexPath: IndexPath) -> (NSView & NSCollectionViewElement)?
  @available(macOS 10.11, *)
  func visibleSupplementaryViews(ofKind elementKind: NSCollectionView.SupplementaryElementKind) -> [NSView & NSCollectionViewElement]
  @available(macOS 10.11, *)
  func indexPathsForVisibleSupplementaryElements(ofKind elementKind: NSCollectionView.SupplementaryElementKind) -> Set<IndexPath>
  @available(macOS 10.11, *)
  func insertSections(_ sections: IndexSet)
  @available(macOS 10.11, *)
  func deleteSections(_ sections: IndexSet)
  @available(macOS 10.11, *)
  func reloadSections(_ sections: IndexSet)
  @available(macOS 10.11, *)
  func moveSection(_ section: Int, toSection newSection: Int)
  @available(macOS 10.11, *)
  func insertItems(at indexPaths: Set<IndexPath>)
  @available(macOS 10.11, *)
  func deleteItems(at indexPaths: Set<IndexPath>)
  @available(macOS 10.11, *)
  func reloadItems(at indexPaths: Set<IndexPath>)
  @available(macOS 10.11, *)
  func moveItem(at indexPath: IndexPath, to newIndexPath: IndexPath)
  @available(macOS 10.11, *)
  func performBatchUpdates(_ updates: (() -> Void)?, completionHandler: ((Bool) -> Void)? = nil)
  @available(macOS 10.11, *)
  func performBatchUpdatesAsync(_ updates: (() -> Void)?) async -> Bool
  @available(macOS 10.12, *)
  @IBAction func toggleSectionCollapse(_ sender: Any)
  @available(macOS 10.11, *)
  func scrollToItems(at indexPaths: Set<IndexPath>, scrollPosition: NSCollectionView.ScrollPosition)
  @available(macOS 10.6, *)
  func setDraggingSourceOperationMask(_ dragOperationMask: NSDragOperation, forLocal localDestination: Bool)
  @available(macOS 10.11, *)
  func draggingImageForItems(at indexPaths: Set<IndexPath>, with event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  @available(macOS 10.6, *)
  func draggingImageForItems(at indexes: IndexSet, with event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
}
protocol NSCollectionViewDataSource : NSObjectProtocol {
  @available(macOS 10.11, *)
  func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int
  @available(macOS 10.11, *)
  func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem
  @available(macOS 10.11, *)
  optional func numberOfSections(in collectionView: NSCollectionView) -> Int
  @available(macOS 10.5, *)
  optional func collectionView(_ collectionView: NSCollectionView, viewForSupplementaryElementOfKind kind: NSCollectionView.SupplementaryElementKind, at indexPath: IndexPath) -> NSView
}
protocol NSCollectionViewPrefetching : NSObjectProtocol {
  @available(macOS 10.5, *)
  func collectionView(_ collectionView: NSCollectionView, prefetchItemsAt indexPaths: [IndexPath])
  @available(macOS 10.5, *)
  optional func collectionView(_ collectionView: NSCollectionView, cancelPrefetchingForItemsAt indexPaths: [IndexPath])
}
protocol NSCollectionViewDelegate : NSObjectProtocol {
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, canDragItemsAt indexPaths: Set<IndexPath>, with event: NSEvent) -> Bool
  @available(macOS 10.6, *)
  optional func collectionView(_ collectionView: NSCollectionView, canDragItemsAt indexes: IndexSet, with event: NSEvent) -> Bool
  @available(macOS, introduced: 10.11, deprecated: 10.15, message: "Use -collectionView:pasteboardWriterForItemAtIndexPath: instead")
  optional func collectionView(_ collectionView: NSCollectionView, writeItemsAt indexPaths: Set<IndexPath>, to pasteboard: NSPasteboard) -> Bool
  @available(macOS, introduced: 10.6, deprecated: 10.15, message: "Use -collectionView:pasteboardWriterForItemAtIndexPath: instead")
  optional func collectionView(_ collectionView: NSCollectionView, writeItemsAt indexes: IndexSet, to pasteboard: NSPasteboard) -> Bool
  @available(macOS, introduced: 10.11, deprecated: 10.13, message: "Use NSFilePromiseReceiver objects instead")
  optional func collectionView(_ collectionView: NSCollectionView, namesOfPromisedFilesDroppedAtDestination dropURL: URL, forDraggedItemsAt indexPaths: Set<IndexPath>) -> [String]
  @available(macOS, introduced: 10.6, deprecated: 10.13, message: "Use NSFilePromiseReceiver objects instead")
  optional func collectionView(_ collectionView: NSCollectionView, namesOfPromisedFilesDroppedAtDestination dropURL: URL, forDraggedItemsAt indexes: IndexSet) -> [String]
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, draggingImageForItemsAt indexPaths: Set<IndexPath>, with event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  @available(macOS 10.6, *)
  optional func collectionView(_ collectionView: NSCollectionView, draggingImageForItemsAt indexes: IndexSet, with event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, validateDrop draggingInfo: NSDraggingInfo, proposedIndexPath proposedDropIndexPath: AutoreleasingUnsafeMutablePointer<NSIndexPath>, dropOperation proposedDropOperation: UnsafeMutablePointer<NSCollectionView.DropOperation>) -> NSDragOperation
  @available(macOS 10.6, *)
  optional func collectionView(_ collectionView: NSCollectionView, validateDrop draggingInfo: NSDraggingInfo, proposedIndex proposedDropIndex: UnsafeMutablePointer<Int>, dropOperation proposedDropOperation: UnsafeMutablePointer<NSCollectionView.DropOperation>) -> NSDragOperation
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, acceptDrop draggingInfo: NSDraggingInfo, indexPath: IndexPath, dropOperation: NSCollectionView.DropOperation) -> Bool
  @available(macOS 10.6, *)
  optional func collectionView(_ collectionView: NSCollectionView, acceptDrop draggingInfo: NSDraggingInfo, index: Int, dropOperation: NSCollectionView.DropOperation) -> Bool
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, pasteboardWriterForItemAt indexPath: IndexPath) -> NSPasteboardWriting?
  @available(macOS 10.5, *)
  optional func collectionView(_ collectionView: NSCollectionView, pasteboardWriterForItemAt index: Int) -> NSPasteboardWriting?
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, draggingSession session: NSDraggingSession, willBeginAt screenPoint: NSPoint, forItemsAt indexPaths: Set<IndexPath>)
  @available(macOS 10.7, *)
  optional func collectionView(_ collectionView: NSCollectionView, draggingSession session: NSDraggingSession, willBeginAt screenPoint: NSPoint, forItemsAt indexes: IndexSet)
  @available(macOS 10.7, *)
  optional func collectionView(_ collectionView: NSCollectionView, draggingSession session: NSDraggingSession, endedAt screenPoint: NSPoint, dragOperation operation: NSDragOperation)
  @available(macOS 10.5, *)
  optional func collectionView(_ collectionView: NSCollectionView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, shouldChangeItemsAt indexPaths: Set<IndexPath>, to highlightState: NSCollectionViewItem.HighlightState) -> Set<IndexPath>
  @available(macOS 10.11, *)
  @asyncHandler optional func collectionView(_ collectionView: NSCollectionView, didChangeItemsAt indexPaths: Set<IndexPath>, to highlightState: NSCollectionViewItem.HighlightState)
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, shouldSelectItemsAt indexPaths: Set<IndexPath>) -> Set<IndexPath>
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, shouldDeselectItemsAt indexPaths: Set<IndexPath>) -> Set<IndexPath>
  @available(macOS 10.11, *)
  @asyncHandler optional func collectionView(_ collectionView: NSCollectionView, didSelectItemsAt indexPaths: Set<IndexPath>)
  @available(macOS 10.11, *)
  @asyncHandler optional func collectionView(_ collectionView: NSCollectionView, didDeselectItemsAt indexPaths: Set<IndexPath>)
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, willDisplay item: NSCollectionViewItem, forRepresentedObjectAt indexPath: IndexPath)
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, willDisplaySupplementaryView view: NSView, forElementKind elementKind: NSCollectionView.SupplementaryElementKind, at indexPath: IndexPath)
  @available(macOS 10.11, *)
  @asyncHandler optional func collectionView(_ collectionView: NSCollectionView, didEndDisplaying item: NSCollectionViewItem, forRepresentedObjectAt indexPath: IndexPath)
  @available(macOS 10.11, *)
  @asyncHandler optional func collectionView(_ collectionView: NSCollectionView, didEndDisplayingSupplementaryView view: NSView, forElementOfKind elementKind: NSCollectionView.SupplementaryElementKind, at indexPath: IndexPath)
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, transitionLayoutForOldLayout fromLayout: NSCollectionViewLayout, newLayout toLayout: NSCollectionViewLayout) -> NSCollectionViewTransitionLayout
}
extension NSIndexPath {
  @available(macOS 10.11, *)
  /*not inherited*/ init(forItem item: Int, inSection section: Int)
  @available(macOS 10.11, *)
  var item: Int { get }
  @available(macOS 10.11, *)
  var section: Int { get }
}
extension NSSet {
  @available(macOS 10.11, *)
  convenience init(collectionViewIndexPath indexPath: IndexPath)
  @available(macOS 10.11, *)
  convenience init(collectionViewIndexPaths indexPaths: [IndexPath])
  @available(macOS 10.11, *)
  func enumerateIndexPaths(options opts: NSEnumerationOptions = [], using block: (IndexPath, UnsafeMutablePointer<ObjCBool>) -> Void)
}
extension NSCollectionView {
  @available(macOS, introduced: 10.5, deprecated: 10.14, message: "Use -[NSCollectionViewDataSource collectionView:itemForRepresentedObjectAtIndexPath:] instead")
  func newItem(forRepresentedObject object: Any) -> NSCollectionViewItem
  @available(macOS, introduced: 10.5, deprecated: 10.14, message: "Use -registerNib:forItemWithIdentifier: or -registerClass:forItemWithIdentifier: instead.")
  var itemPrototype: NSCollectionViewItem?
  @available(macOS, introduced: 10.5, deprecated: 10.14, message: "Use NSCollectionViewGridLayout as the receiver's collectionViewLayout, setting its maximumNumberOfRows instead")
  var maxNumberOfRows: Int
  @available(macOS, introduced: 10.5, deprecated: 10.14, message: "Use NSCollectionViewGridLayout as the receiver's collectionViewLayout, setting its maximumNumberOfColumns instead")
  var maxNumberOfColumns: Int
  @available(macOS, introduced: 10.5, deprecated: 10.14, message: "Use NSCollectionViewGridLayout as the receiver's collectionViewLayout, setting its minimumItemSize instead")
  var minItemSize: NSSize
  @available(macOS, introduced: 10.5, deprecated: 10.14, message: "Use NSCollectionViewGridLayout as the receiver's collectionViewLayout, setting its maximumItemSize instead")
  var maxItemSize: NSSize
}
