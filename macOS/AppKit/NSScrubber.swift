
protocol NSScrubberDataSource : NSObjectProtocol {
  @available(macOS 10.12.2, *)
  func numberOfItems(for scrubber: NSScrubber) -> Int
  @available(macOS 10.12.2, *)
  func scrubber(_ scrubber: NSScrubber, viewForItemAt index: Int) -> NSScrubberItemView
}
protocol NSScrubberDelegate : NSObjectProtocol {
  @available(macOS 10.12.2, *)
  @asyncHandler optional func scrubber(_ scrubber: NSScrubber, didSelectItemAt selectedIndex: Int)
  @available(macOS 10.12.2, *)
  @asyncHandler optional func scrubber(_ scrubber: NSScrubber, didHighlightItemAt highlightedIndex: Int)
  @available(macOS 10.12.2, *)
  @asyncHandler optional func scrubber(_ scrubber: NSScrubber, didChangeVisibleRange visibleRange: NSRange)
  @available(macOS 10.12.2, *)
  @asyncHandler optional func didBeginInteracting(with scrubber: NSScrubber)
  @available(macOS 10.12.2, *)
  @asyncHandler optional func didFinishInteracting(with scrubber: NSScrubber)
  @available(macOS 10.12.2, *)
  @asyncHandler optional func didCancelInteracting(with scrubber: NSScrubber)
}
extension NSScrubber {
  @available(macOS 10.12.2, *)
  enum Mode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case fixed
    case free
  }
  @available(macOS 10.12.2, *)
  enum Alignment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case leading
    case trailing
    case center
  }
}
@available(macOS 10.12.2, *)
class NSScrubberSelectionStyle : NSObject, NSCoding {
  class var outlineOverlay: NSScrubberSelectionStyle { get }
  class var roundedBackground: NSScrubberSelectionStyle { get }
  func makeSelectionView() -> NSScrubberSelectionView?
}
@available(macOS 10.12.2, *)
class NSScrubber : NSView {
  weak var dataSource: @sil_weak NSScrubberDataSource?
  weak var delegate: @sil_weak NSScrubberDelegate?
  var scrubberLayout: NSScrubberLayout
  var numberOfItems: Int { get }
  var highlightedIndex: Int { get }
  var selectedIndex: Int
  var mode: NSScrubber.Mode
  var itemAlignment: NSScrubber.Alignment
  var isContinuous: Bool
  var floatsSelectionViews: Bool
  var selectionBackgroundStyle: NSScrubberSelectionStyle?
  var selectionOverlayStyle: NSScrubberSelectionStyle?
  var showsArrowButtons: Bool
  var showsAdditionalContentIndicators: Bool
  @NSCopying var backgroundColor: NSColor?
  var backgroundView: NSView?
  func reloadData()
  func performSequentialBatchUpdates(_ updateBlock: () -> Void)
  func insertItems(at indexes: IndexSet)
  func removeItems(at indexes: IndexSet)
  func reloadItems(at indexes: IndexSet)
  func moveItem(at oldIndex: Int, to newIndex: Int)
  func scrollItem(at index: Int, to alignment: NSScrubber.Alignment)
  func itemViewForItem(at index: Int) -> NSScrubberItemView?
  func register(_ itemViewClass: AnyClass?, forItemIdentifier itemIdentifier: NSUserInterfaceItemIdentifier)
  func register(_ nib: NSNib?, forItemIdentifier itemIdentifier: NSUserInterfaceItemIdentifier)
  func makeItem(withIdentifier itemIdentifier: NSUserInterfaceItemIdentifier, owner: Any?) -> NSScrubberItemView?
}
