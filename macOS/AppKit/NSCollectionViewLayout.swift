
@available(macOS 10.11, *)
enum NSCollectionElementCategory : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case item
  case supplementaryView
  case decorationView
  case interItemGap
}
extension NSCollectionView {
  typealias DecorationElementKind = String
  @available(macOS 10.11, *)
  class let elementKindInterItemGapIndicator: String
  @available(macOS 10.11, *)
  enum UpdateAction : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case insert
    case delete
    case reload
    case move
    case none
  }
}
@available(macOS 10.11, *)
class NSCollectionViewLayoutAttributes : NSObject, NSCopying {
  var frame: NSRect
  var size: NSSize
  var alpha: CGFloat
  var zIndex: Int
  var isHidden: Bool
  var indexPath: IndexPath?
  var representedElementCategory: NSCollectionElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forItemWith indexPath: IndexPath)
  convenience init(forInterItemGapBefore indexPath: IndexPath)
  convenience init(forSupplementaryViewOfKind elementKind: NSCollectionView.SupplementaryElementKind, with indexPath: IndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: NSCollectionView.DecorationElementKind, with indexPath: IndexPath)
}
@available(macOS 10.11, *)
class NSCollectionViewUpdateItem : NSObject {
  var indexPathBeforeUpdate: IndexPath? { get }
  var indexPathAfterUpdate: IndexPath? { get }
  var updateAction: NSCollectionView.UpdateAction { get }
}
@available(macOS 10.11, *)
class NSCollectionViewLayoutInvalidationContext : NSObject {
  var invalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  func invalidateItems(at indexPaths: Set<IndexPath>)
  func invalidateSupplementaryElements(ofKind elementKind: NSCollectionView.SupplementaryElementKind, at indexPaths: Set<IndexPath>)
  func invalidateDecorationElements(ofKind elementKind: NSCollectionView.DecorationElementKind, at indexPaths: Set<IndexPath>)
  var invalidatedItemIndexPaths: Set<IndexPath>? { get }
  var invalidatedSupplementaryIndexPaths: [NSCollectionView.SupplementaryElementKind : Set<IndexPath>]? { get }
  var invalidatedDecorationIndexPaths: [NSCollectionView.DecorationElementKind : Set<IndexPath>]? { get }
  var contentOffsetAdjustment: NSPoint
  var contentSizeAdjustment: NSSize
}
@available(macOS 10.11, *)
class NSCollectionViewLayout : NSObject, NSCoding {
  weak var collectionView: @sil_weak NSCollectionView? { get }
  func invalidateLayout()
  func invalidateLayout(with context: NSCollectionViewLayoutInvalidationContext)
  func register(_ viewClass: AnyClass?, forDecorationViewOfKind elementKind: NSCollectionView.DecorationElementKind)
  func register(_ nib: NSNib?, forDecorationViewOfKind elementKind: NSCollectionView.DecorationElementKind)
}
extension NSCollectionViewLayout {
  class var layoutAttributesClass: AnyClass { get }
  class var invalidationContextClass: AnyClass { get }
  func prepare()
  func layoutAttributesForElements(in rect: NSRect) -> [NSCollectionViewLayoutAttributes]
  func layoutAttributesForItem(at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryView(ofKind elementKind: NSCollectionView.SupplementaryElementKind, at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDecorationView(ofKind elementKind: NSCollectionView.DecorationElementKind, at indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForDropTarget(at pointInCollectionView: NSPoint) -> NSCollectionViewLayoutAttributes?
  func layoutAttributesForInterItemGap(before indexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func shouldInvalidateLayout(forBoundsChange newBounds: NSRect) -> Bool
  func invalidationContext(forBoundsChange newBounds: NSRect) -> NSCollectionViewLayoutInvalidationContext
  func shouldInvalidateLayout(forPreferredLayoutAttributes preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> Bool
  func invalidationContext(forPreferredLayoutAttributes preferredAttributes: NSCollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: NSCollectionViewLayoutAttributes) -> NSCollectionViewLayoutInvalidationContext
  func targetContentOffset(forProposedContentOffset proposedContentOffset: NSPoint, withScrollingVelocity velocity: NSPoint) -> NSPoint
  func targetContentOffset(forProposedContentOffset proposedContentOffset: NSPoint) -> NSPoint
  var collectionViewContentSize: NSSize { get }
}
extension NSCollectionViewLayout {
  func prepare(forCollectionViewUpdates updateItems: [NSCollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepare(forAnimatedBoundsChange oldBounds: NSRect)
  func finalizeAnimatedBoundsChange()
  func prepareForTransition(to newLayout: NSCollectionViewLayout)
  func prepareForTransition(from oldLayout: NSCollectionViewLayout)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItem(at itemIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItem(at itemIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElement(ofKind elementKind: NSCollectionView.SupplementaryElementKind, at elementIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElement(ofKind elementKind: NSCollectionView.SupplementaryElementKind, at elementIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElement(ofKind elementKind: NSCollectionView.DecorationElementKind, at decorationIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElement(ofKind elementKind: NSCollectionView.DecorationElementKind, at decorationIndexPath: IndexPath) -> NSCollectionViewLayoutAttributes?
  func indexPathsToDeleteForSupplementaryView(ofKind elementKind: NSCollectionView.SupplementaryElementKind) -> Set<IndexPath>
  func indexPathsToDeleteForDecorationView(ofKind elementKind: NSCollectionView.DecorationElementKind) -> Set<IndexPath>
  func indexPathsToInsertForSupplementaryView(ofKind elementKind: NSCollectionView.SupplementaryElementKind) -> Set<IndexPath>
  func indexPathsToInsertForDecorationView(ofKind elementKind: NSCollectionView.DecorationElementKind) -> Set<IndexPath>
}
