
@available(macOS 10.12.2, *)
class NSScrubberLayoutAttributes : NSObject, NSCopying {
  var itemIndex: Int
  var frame: NSRect
  var alpha: CGFloat
  convenience init(forItemAt index: Int)
}
@available(macOS 10.12.2, *)
class NSScrubberLayout : NSObject, NSCoding {
  class var layoutAttributesClass: AnyClass { get }
  weak var scrubber: @sil_weak NSScrubber? { get }
  var visibleRect: NSRect { get }
  func invalidateLayout()
  func prepare()
  var scrubberContentSize: NSSize { get }
  func layoutAttributesForItem(at index: Int) -> NSScrubberLayoutAttributes?
  func layoutAttributesForItems(in rect: NSRect) -> Set<NSScrubberLayoutAttributes>
  var shouldInvalidateLayoutForSelectionChange: Bool { get }
  var shouldInvalidateLayoutForHighlightChange: Bool { get }
  func shouldInvalidateLayoutForChange(fromVisibleRect: NSRect, toVisibleRect: NSRect) -> Bool
  var automaticallyMirrorsInRightToLeftLayout: Bool { get }
}
protocol NSScrubberFlowLayoutDelegate : NSScrubberDelegate {
  @available(macOS 10.12.2, *)
  optional func scrubber(_ scrubber: NSScrubber, layout: NSScrubberFlowLayout, sizeForItemAt itemIndex: Int) -> NSSize
}
@available(macOS 10.12.2, *)
class NSScrubberFlowLayout : NSScrubberLayout {
  var itemSpacing: CGFloat
  var itemSize: NSSize
  func invalidateLayoutForItems(at invalidItemIndexes: IndexSet)
}
@available(macOS 10.12.2, *)
class NSScrubberProportionalLayout : NSScrubberLayout {
  var numberOfVisibleItems: Int
  init(numberOfVisibleItems: Int)
}
