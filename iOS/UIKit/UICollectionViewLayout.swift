
extension UICollectionView {
  @available(iOS 6.0, *)
  class let elementKindSectionHeader: String
  @available(iOS 6.0, *)
  class let elementKindSectionFooter: String
  enum ScrollDirection : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case vertical
    case horizontal
  }
  enum ElementCategory : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case cell
    case supplementaryView
    case decorationView
  }
}
@available(iOS 6.0, *)
class UICollectionViewLayoutAttributes : NSObject, NSCopying, UIDynamicItem {
  var frame: CGRect
  var size: CGSize
  var transform3D: CATransform3D
  var alpha: CGFloat
  var zIndex: Int
  var isHidden: Bool
  var indexPath: IndexPath
  var representedElementCategory: UICollectionView.ElementCategory { get }
  var representedElementKind: String? { get }
  convenience init(forCellWith indexPath: IndexPath)
  convenience init(forSupplementaryViewOfKind elementKind: String, with indexPath: IndexPath)
  convenience init(forDecorationViewOfKind decorationViewKind: String, with indexPath: IndexPath)
}
extension UICollectionViewUpdateItem {
  enum Action : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case insert
    case delete
    case reload
    case move
    case none
  }
}
@available(iOS 6.0, *)
class UICollectionViewUpdateItem : NSObject {
  var indexPathBeforeUpdate: IndexPath? { get }
  var indexPathAfterUpdate: IndexPath? { get }
  var updateAction: UICollectionViewUpdateItem.Action { get }
}
@available(iOS 7.0, *)
class UICollectionViewLayoutInvalidationContext : NSObject {
  var invalidateEverything: Bool { get }
  var invalidateDataSourceCounts: Bool { get }
  @available(iOS 8.0, *)
  func invalidateItems(at indexPaths: [IndexPath])
  @available(iOS 8.0, *)
  func invalidateSupplementaryElements(ofKind elementKind: String, at indexPaths: [IndexPath])
  @available(iOS 8.0, *)
  func invalidateDecorationElements(ofKind elementKind: String, at indexPaths: [IndexPath])
  @available(iOS 8.0, *)
  var invalidatedItemIndexPaths: [IndexPath]? { get }
  @available(iOS 8.0, *)
  var invalidatedSupplementaryIndexPaths: [String : [IndexPath]]? { get }
  @available(iOS 8.0, *)
  var invalidatedDecorationIndexPaths: [String : [IndexPath]]? { get }
  @available(iOS 8.0, *)
  var contentOffsetAdjustment: CGPoint
  @available(iOS 8.0, *)
  var contentSizeAdjustment: CGSize
  @available(iOS 9.0, *)
  var previousIndexPathsForInteractivelyMovingItems: [IndexPath]? { get }
  @available(iOS 9.0, *)
  var targetIndexPathsForInteractivelyMovingItems: [IndexPath]? { get }
  @available(iOS 9.0, *)
  var interactiveMovementTarget: CGPoint { get }
}
@available(iOS 6.0, *)
class UICollectionViewLayout : NSObject, NSCoding {
  var collectionView: UICollectionView? { get }
  func invalidateLayout()
  @available(iOS 7.0, *)
  func invalidateLayout(with context: UICollectionViewLayoutInvalidationContext)
  func register(_ viewClass: AnyClass?, forDecorationViewOfKind elementKind: String)
  func register(_ nib: UINib?, forDecorationViewOfKind elementKind: String)
}
extension UICollectionViewLayout {
  class var layoutAttributesClass: AnyClass { get }
  @available(iOS 7.0, *)
  class var invalidationContextClass: AnyClass { get }
  func prepare()
  func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]?
  func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryView(ofKind elementKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationView(ofKind elementKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool
  @available(iOS 7.0, *)
  func invalidationContext(forBoundsChange newBounds: CGRect) -> UICollectionViewLayoutInvalidationContext
  @available(iOS 8.0, *)
  func shouldInvalidateLayout(forPreferredLayoutAttributes preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> Bool
  @available(iOS 8.0, *)
  func invalidationContext(forPreferredLayoutAttributes preferredAttributes: UICollectionViewLayoutAttributes, withOriginalAttributes originalAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutInvalidationContext
  func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint, withScrollingVelocity velocity: CGPoint) -> CGPoint
  @available(iOS 7.0, *)
  func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
  var collectionViewContentSize: CGSize { get }
  var developmentLayoutDirection: UIUserInterfaceLayoutDirection { get }
  var flipsHorizontallyInOppositeLayoutDirection: Bool { get }
}
extension UICollectionViewLayout {
  func prepare(forCollectionViewUpdates updateItems: [UICollectionViewUpdateItem])
  func finalizeCollectionViewUpdates()
  func prepare(forAnimatedBoundsChange oldBounds: CGRect)
  func finalizeAnimatedBoundsChange()
  @available(iOS 7.0, *)
  func prepareForTransition(to newLayout: UICollectionViewLayout)
  @available(iOS 7.0, *)
  func prepareForTransition(from oldLayout: UICollectionViewLayout)
  @available(iOS 7.0, *)
  func finalizeLayoutTransition()
  func initialLayoutAttributesForAppearingItem(at itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingItem(at itemIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingSupplementaryElement(ofKind elementKind: String, at elementIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingSupplementaryElement(ofKind elementKind: String, at elementIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func initialLayoutAttributesForAppearingDecorationElement(ofKind elementKind: String, at decorationIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func finalLayoutAttributesForDisappearingDecorationElement(ofKind elementKind: String, at decorationIndexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  @available(iOS 7.0, *)
  func indexPathsToDeleteForSupplementaryView(ofKind elementKind: String) -> [IndexPath]
  @available(iOS 7.0, *)
  func indexPathsToDeleteForDecorationView(ofKind elementKind: String) -> [IndexPath]
  @available(iOS 7.0, *)
  func indexPathsToInsertForSupplementaryView(ofKind elementKind: String) -> [IndexPath]
  @available(iOS 7.0, *)
  func indexPathsToInsertForDecorationView(ofKind elementKind: String) -> [IndexPath]
}
extension UICollectionViewLayout {
  @available(iOS 9.0, *)
  func targetIndexPath(forInteractivelyMovingItem previousIndexPath: IndexPath, withPosition position: CGPoint) -> IndexPath
  @available(iOS 9.0, *)
  func layoutAttributesForInteractivelyMovingItem(at indexPath: IndexPath, withTargetPosition position: CGPoint) -> UICollectionViewLayoutAttributes
  @available(iOS 9.0, *)
  func invalidationContext(forInteractivelyMovingItems targetIndexPaths: [IndexPath], withTargetPosition targetPosition: CGPoint, previousIndexPaths: [IndexPath], previousPosition: CGPoint) -> UICollectionViewLayoutInvalidationContext
  @available(iOS 9.0, *)
  func invalidationContextForEndingInteractiveMovementOfItems(toFinalIndexPaths indexPaths: [IndexPath], previousIndexPaths: [IndexPath], movementCancelled: Bool) -> UICollectionViewLayoutInvalidationContext
}
