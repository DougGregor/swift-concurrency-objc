
extension UICollectionView {
  typealias LayoutInteractiveTransitionCompletion = (Bool, Bool) -> Void
  struct ScrollPosition : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var top: UICollectionView.ScrollPosition { get }
    static var centeredVertically: UICollectionView.ScrollPosition { get }
    static var bottom: UICollectionView.ScrollPosition { get }
    static var left: UICollectionView.ScrollPosition { get }
    static var centeredHorizontally: UICollectionView.ScrollPosition { get }
    static var right: UICollectionView.ScrollPosition { get }
  }
}
@available(tvOS 9.0, *)
class UICollectionViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: IndexPath? { get }
  var nextFocusedIndexPath: IndexPath? { get }
}
protocol UICollectionViewDataSource : NSObjectProtocol {
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
  @available(tvOS 6.0, *)
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
  @available(tvOS 6.0, *)
  optional func numberOfSections(in collectionView: UICollectionView) -> Int
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView
  @available(tvOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
  @available(tvOS 10.2, *)
  optional func indexTitles(for collectionView: UICollectionView) -> [String]?
  @available(tvOS 10.2, *)
  optional func collectionView(_ collectionView: UICollectionView, indexPathForIndexTitle title: String, at index: Int) -> IndexPath
}
protocol UICollectionViewDataSourcePrefetching : NSObjectProtocol {
  @available(tvOS 10.0, *)
  func collectionView(_ collectionView: UICollectionView, prefetchItemsAt indexPaths: [IndexPath])
  @available(tvOS 10.0, *)
  optional func collectionView(_ collectionView: UICollectionView, cancelPrefetchingForItemsAt indexPaths: [IndexPath])
}
protocol UICollectionViewDelegate : UIScrollViewDelegate {
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldDeselectItemAt indexPath: IndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath)
  @available(tvOS 8.0, *)
  optional func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
  @available(tvOS 8.0, *)
  optional func collectionView(_ collectionView: UICollectionView, willDisplaySupplementaryView view: UICollectionReusableView, forElementKind elementKind: String, at indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didEndDisplayingSupplementaryView view: UICollectionReusableView, forElementOfKind elementKind: String, at indexPath: IndexPath)
  @available(tvOS, introduced: 6.0, deprecated: 13.0)
  optional func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool
  @available(tvOS, introduced: 6.0, deprecated: 13.0)
  optional func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool
  @available(tvOS, introduced: 6.0, deprecated: 13.0)
  optional func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?)
  @available(tvOS 7.0, *)
  optional func collectionView(_ collectionView: UICollectionView, transitionLayoutForOldLayout fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
  @available(tvOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, canFocusItemAt indexPath: IndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, shouldUpdateFocusIn context: UICollectionViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  optional func indexPathForPreferredFocusedView(in collectionView: UICollectionView) -> IndexPath?
  @available(tvOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, targetIndexPathForMoveFromItemAt originalIndexPath: IndexPath, toProposedIndexPath proposedIndexPath: IndexPath) -> IndexPath
  @available(tvOS 9.0, *)
  optional func collectionView(_ collectionView: UICollectionView, targetContentOffsetForProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint
  @available(tvOS 14.0, *)
  optional func collectionView(_ collectionView: UICollectionView, canEditItemAt indexPath: IndexPath) -> Bool
}
@available(tvOS 6.0, *)
class UICollectionView : UIScrollView, UIDataSourceTranslating {
  init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout)
  var collectionViewLayout: UICollectionViewLayout
  weak var dataSource: @sil_weak UICollectionViewDataSource?
  @available(tvOS 10.0, *)
  weak var prefetchDataSource: @sil_weak UICollectionViewDataSourcePrefetching?
  @available(tvOS 10.0, *)
  var isPrefetchingEnabled: Bool
  var backgroundView: UIView?
  func register(_ cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String)
  func register(_ nib: UINib?, forCellWithReuseIdentifier identifier: String)
  func register(_ viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String)
  func register(_ nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String)
  func dequeueReusableCell(withReuseIdentifier identifier: String, for indexPath: IndexPath) -> UICollectionViewCell
  func dequeueReusableSupplementaryView(ofKind elementKind: String, withReuseIdentifier identifier: String, for indexPath: IndexPath) -> UICollectionReusableView
  @available(tvOS 14.0, *)
  func __dequeueConfiguredReusableCell(with registration: __UICollectionViewCellRegistration, for indexPath: IndexPath, item: Any) -> UICollectionViewCell
  @available(tvOS 14.0, *)
  func __dequeueConfiguredReusableSupplementaryView(with registration: __UICollectionViewSupplementaryRegistration, for indexPath: IndexPath) -> UICollectionReusableView
  var allowsSelection: Bool
  var allowsMultipleSelection: Bool
  var indexPathsForSelectedItems: [IndexPath]? { get }
  func selectItem(at indexPath: IndexPath?, animated: Bool, scrollPosition: UICollectionView.ScrollPosition)
  func deselectItem(at indexPath: IndexPath, animated: Bool)
  @available(tvOS 11.0, *)
  var hasUncommittedUpdates: Bool { get }
  func reloadData()
  func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool)
  @available(tvOS 7.0, *)
  func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func startInteractiveTransition(to layout: UICollectionViewLayout, completion: UICollectionView.LayoutInteractiveTransitionCompletion? = nil) -> UICollectionViewTransitionLayout
  @available(tvOS 7.0, *)
  func finishInteractiveTransition()
  @available(tvOS 7.0, *)
  func cancelInteractiveTransition()
  var numberOfSections: Int { get }
  func numberOfItems(inSection section: Int) -> Int
  func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryElement(ofKind kind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func indexPathForItem(at point: CGPoint) -> IndexPath?
  func indexPath(for cell: UICollectionViewCell) -> IndexPath?
  func cellForItem(at indexPath: IndexPath) -> UICollectionViewCell?
  var visibleCells: [UICollectionViewCell] { get }
  var indexPathsForVisibleItems: [IndexPath] { get }
  @available(tvOS 9.0, *)
  func supplementaryView(forElementKind elementKind: String, at indexPath: IndexPath) -> UICollectionReusableView?
  @available(tvOS 9.0, *)
  func visibleSupplementaryViews(ofKind elementKind: String) -> [UICollectionReusableView]
  @available(tvOS 9.0, *)
  func indexPathsForVisibleSupplementaryElements(ofKind elementKind: String) -> [IndexPath]
  func scrollToItem(at indexPath: IndexPath, at scrollPosition: UICollectionView.ScrollPosition, animated: Bool)
  func insertSections(_ sections: IndexSet)
  func deleteSections(_ sections: IndexSet)
  func reloadSections(_ sections: IndexSet)
  func moveSection(_ section: Int, toSection newSection: Int)
  func insertItems(at indexPaths: [IndexPath])
  func deleteItems(at indexPaths: [IndexPath])
  func reloadItems(at indexPaths: [IndexPath])
  func moveItem(at indexPath: IndexPath, to newIndexPath: IndexPath)
  func performBatchUpdates(_ updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(tvOS 9.0, *)
  func beginInteractiveMovementForItem(at indexPath: IndexPath) -> Bool
  @available(tvOS 9.0, *)
  func updateInteractiveMovementTargetPosition(_ targetPosition: CGPoint)
  @available(tvOS 9.0, *)
  func endInteractiveMovement()
  @available(tvOS 9.0, *)
  func cancelInteractiveMovement()
  @available(tvOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  @available(tvOS 14.0, *)
  var isEditing: Bool
  @available(tvOS 14.0, *)
  var allowsSelectionDuringEditing: Bool
  @available(tvOS 14.0, *)
  var allowsMultipleSelectionDuringEditing: Bool
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionView {
  struct CellRegistration<Cell, Item> where Cell : UICollectionViewCell {
    typealias Handler = (Cell, IndexPath, Item) -> Void
    init(handler: @escaping UICollectionView.CellRegistration<Cell, Item>.Handler)
    init(cellNib: UINib, handler: @escaping UICollectionView.CellRegistration<Cell, Item>.Handler)
  }
  struct SupplementaryRegistration<Supplementary> where Supplementary : UICollectionReusableView {
    typealias Handler = (Supplementary, String, IndexPath) -> Void
    init(elementKind: String, handler: @escaping UICollectionView.SupplementaryRegistration<Supplementary>.Handler)
    init(supplementaryNib: UINib, elementKind: String, handler: @escaping UICollectionView.SupplementaryRegistration<Supplementary>.Handler)
  }
  func dequeueConfiguredReusableCell<Cell, Item>(using registration: UICollectionView.CellRegistration<Cell, Item>, for indexPath: IndexPath, item: Item?) -> Cell where Cell : UICollectionViewCell
  func dequeueConfiguredReusableSupplementary<Supplementary>(using registration: UICollectionView.SupplementaryRegistration<Supplementary>, for indexPath: IndexPath) -> Supplementary where Supplementary : UICollectionReusableView
}
extension UICollectionViewDropProposal {
}
