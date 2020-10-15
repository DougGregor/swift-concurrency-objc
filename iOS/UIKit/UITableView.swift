
extension UITableView {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case plain
    case grouped
    @available(iOS 13.0, *)
    case insetGrouped
  }
  enum ScrollPosition : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case top
    case middle
    case bottom
  }
  enum RowAnimation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case fade
    case right
    case left
    case top
    case bottom
    case none
    case middle
    case automatic
  }
  @available(iOS 3.0, *)
  class let indexSearch: String
  @available(iOS 5.0, *)
  class let automaticDimension: CGFloat
  class let selectionDidChangeNotification: NSNotification.Name
  @available(iOS 11.0, *)
  enum SeparatorInsetReference : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case fromCellEdges
    case fromAutomaticInsets
  }
}
extension UITableViewRowAction {
  @available(iOS, introduced: 8.0, deprecated: 13.0, message: "Use UIContextualAction and related APIs instead.")
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    static var destructive: UITableViewRowAction.Style { get }
    case normal
  }
}
@available(iOS, introduced: 8.0, deprecated: 13.0, message: "Use UIContextualAction and related APIs instead.")
class UITableViewRowAction : NSObject, NSCopying {
  convenience init(style: UITableViewRowAction.Style, title: String?, handler: @escaping (UITableViewRowAction, IndexPath) -> Void)
  var style: UITableViewRowAction.Style { get }
  var title: String?
  @NSCopying var backgroundColor: UIColor?
  @NSCopying var backgroundEffect: UIVisualEffect?
}
@available(iOS 9.0, *)
class UITableViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: IndexPath? { get }
  var nextFocusedIndexPath: IndexPath? { get }
}
protocol UITableViewDelegate : UIScrollViewDelegate {
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  @asyncHandler optional func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  @asyncHandler optional func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(iOS 6.0, *)
  @asyncHandler optional func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
  @available(iOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(iOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
  @available(iOS 6.0, *)
  optional func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool
  @available(iOS 6.0, *)
  @asyncHandler optional func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath)
  @available(iOS 6.0, *)
  @asyncHandler optional func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
  @available(iOS 3.0, *)
  optional func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath?
  @available(iOS 2.0, *)
  @asyncHandler optional func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
  @available(iOS 3.0, *)
  @asyncHandler optional func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle
  @available(iOS 3.0, *)
  optional func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String?
  @available(iOS, introduced: 8.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?
  @available(iOS 11.0, *)
  optional func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
  @available(iOS 11.0, *)
  optional func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath)
  @available(iOS 2.0, *)
  @asyncHandler optional func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int
  @available(iOS, introduced: 5.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool
  @available(iOS, introduced: 5.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool
  @available(iOS, introduced: 5.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?)
  @available(iOS 9.0, *)
  optional func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool
  @available(iOS 9.0, *)
  optional func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
  @available(iOS 9.0, *)
  @asyncHandler optional func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(iOS 9.0, *)
  optional func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath?
  @available(iOS 11.0, *)
  optional func tableView(_ tableView: UITableView, shouldSpringLoadRowAt indexPath: IndexPath, with context: UISpringLoadedInteractionContext) -> Bool
  @available(iOS 13.0, *)
  optional func tableView(_ tableView: UITableView, shouldBeginMultipleSelectionInteractionAt indexPath: IndexPath) -> Bool
  @available(iOS 13.0, *)
  @asyncHandler optional func tableView(_ tableView: UITableView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath)
  @available(iOS 13.0, *)
  @asyncHandler optional func tableViewDidEndMultipleSelectionInteraction(_ tableView: UITableView)
  @available(iOS 13.0, *)
  optional func tableView(_ tableView: UITableView, contextMenuConfigurationForRowAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration?
  @available(iOS 13.0, *)
  optional func tableView(_ tableView: UITableView, previewForHighlightingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?
  @available(iOS 13.0, *)
  optional func tableView(_ tableView: UITableView, previewForDismissingContextMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?
  @available(iOS 13.0, *)
  optional func tableView(_ tableView: UITableView, willPerformPreviewActionForMenuWith configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating)
  @available(iOS 14.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayContextMenu configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)
  @available(iOS 14.0, *)
  optional func tableView(_ tableView: UITableView, willEndContextMenuInteraction configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)
}
@available(iOS 2.0, *)
class UITableView : UIScrollView, NSCoding, UIDataSourceTranslating {
  init(frame: CGRect, style: UITableView.Style)
  var style: UITableView.Style { get }
  weak var dataSource: @sil_weak UITableViewDataSource?
  @available(iOS 10.0, *)
  weak var prefetchDataSource: @sil_weak UITableViewDataSourcePrefetching?
  @available(iOS 11.0, *)
  weak var dragDelegate: @sil_weak UITableViewDragDelegate?
  @available(iOS 11.0, *)
  weak var dropDelegate: @sil_weak UITableViewDropDelegate?
  var rowHeight: CGFloat
  var sectionHeaderHeight: CGFloat
  var sectionFooterHeight: CGFloat
  @available(iOS 7.0, *)
  var estimatedRowHeight: CGFloat
  @available(iOS 7.0, *)
  var estimatedSectionHeaderHeight: CGFloat
  @available(iOS 7.0, *)
  var estimatedSectionFooterHeight: CGFloat
  @available(iOS 7.0, *)
  var separatorInset: UIEdgeInsets
  @available(iOS 11.0, *)
  var separatorInsetReference: UITableView.SeparatorInsetReference
  @available(iOS 3.2, *)
  var backgroundView: UIView?
  var numberOfSections: Int { get }
  func numberOfRows(inSection section: Int) -> Int
  func rect(forSection section: Int) -> CGRect
  func rectForHeader(inSection section: Int) -> CGRect
  func rectForFooter(inSection section: Int) -> CGRect
  func rectForRow(at indexPath: IndexPath) -> CGRect
  func indexPathForRow(at point: CGPoint) -> IndexPath?
  func indexPath(for cell: UITableViewCell) -> IndexPath?
  func indexPathsForRows(in rect: CGRect) -> [IndexPath]?
  func cellForRow(at indexPath: IndexPath) -> UITableViewCell?
  var visibleCells: [UITableViewCell] { get }
  var indexPathsForVisibleRows: [IndexPath]? { get }
  @available(iOS 6.0, *)
  func headerView(forSection section: Int) -> UITableViewHeaderFooterView?
  @available(iOS 6.0, *)
  func footerView(forSection section: Int) -> UITableViewHeaderFooterView?
  func scrollToRow(at indexPath: IndexPath, at scrollPosition: UITableView.ScrollPosition, animated: Bool)
  func scrollToNearestSelectedRow(at scrollPosition: UITableView.ScrollPosition, animated: Bool)
  @available(iOS 11.0, *)
  func performBatchUpdates(_ updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 11.0, *)
  func performBatchUpdates(_ updates: (() -> Void)?) async -> Bool
  func beginUpdates()
  func endUpdates()
  func insertSections(_ sections: IndexSet, with animation: UITableView.RowAnimation)
  func deleteSections(_ sections: IndexSet, with animation: UITableView.RowAnimation)
  @available(iOS 3.0, *)
  func reloadSections(_ sections: IndexSet, with animation: UITableView.RowAnimation)
  @available(iOS 5.0, *)
  func moveSection(_ section: Int, toSection newSection: Int)
  func insertRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation)
  func deleteRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation)
  @available(iOS 3.0, *)
  func reloadRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation)
  @available(iOS 5.0, *)
  func moveRow(at indexPath: IndexPath, to newIndexPath: IndexPath)
  @available(iOS 11.0, *)
  var hasUncommittedUpdates: Bool { get }
  func reloadData()
  @available(iOS 3.0, *)
  func reloadSectionIndexTitles()
  var isEditing: Bool
  func setEditing(_ editing: Bool, animated: Bool)
  @available(iOS 3.0, *)
  var allowsSelection: Bool
  var allowsSelectionDuringEditing: Bool
  @available(iOS 5.0, *)
  var allowsMultipleSelection: Bool
  @available(iOS 5.0, *)
  var allowsMultipleSelectionDuringEditing: Bool
  var indexPathForSelectedRow: IndexPath? { get }
  @available(iOS 5.0, *)
  var indexPathsForSelectedRows: [IndexPath]? { get }
  func selectRow(at indexPath: IndexPath?, animated: Bool, scrollPosition: UITableView.ScrollPosition)
  func deselectRow(at indexPath: IndexPath, animated: Bool)
  var sectionIndexMinimumDisplayRowCount: Int
  @available(iOS 6.0, *)
  var sectionIndexColor: UIColor?
  @available(iOS 7.0, *)
  var sectionIndexBackgroundColor: UIColor?
  @available(iOS 6.0, *)
  var sectionIndexTrackingBackgroundColor: UIColor?
  var separatorStyle: UITableViewCell.SeparatorStyle
  var separatorColor: UIColor?
  @available(iOS 8.0, *)
  @NSCopying var separatorEffect: UIVisualEffect?
  @available(iOS 9.0, *)
  var cellLayoutMarginsFollowReadableWidth: Bool
  @available(iOS 11.0, *)
  var insetsContentViewsToSafeArea: Bool
  var tableHeaderView: UIView?
  var tableFooterView: UIView?
  func dequeueReusableCell(withIdentifier identifier: String) -> UITableViewCell?
  @available(iOS 6.0, *)
  func dequeueReusableCell(withIdentifier identifier: String, for indexPath: IndexPath) -> UITableViewCell
  @available(iOS 6.0, *)
  func dequeueReusableHeaderFooterView(withIdentifier identifier: String) -> UITableViewHeaderFooterView?
  @available(iOS 5.0, *)
  func register(_ nib: UINib?, forCellReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  func register(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  func register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(iOS 6.0, *)
  func register(_ aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(iOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
  @available(iOS 14.0, *)
  var selectionFollowsFocus: Bool
  @available(iOS 11.0, *)
  var dragInteractionEnabled: Bool
  @available(iOS 11.0, *)
  var hasActiveDrag: Bool { get }
  @available(iOS 11.0, *)
  var hasActiveDrop: Bool { get }
}
extension UITableView : UISpringLoadedInteractionSupporting {
}
protocol UITableViewDataSource : NSObjectProtocol {
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  @available(iOS 2.0, *)
  optional func numberOfSections(in tableView: UITableView) -> Int
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
  @available(iOS 2.0, *)
  optional func sectionIndexTitles(for tableView: UITableView) -> [String]?
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
}
protocol UITableViewDataSourcePrefetching : NSObjectProtocol {
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, prefetchRowsAt indexPaths: [IndexPath])
  @available(iOS 2.0, *)
  optional func tableView(_ tableView: UITableView, cancelPrefetchingForRowsAt indexPaths: [IndexPath])
}
@available(iOS 11.0, *)
protocol UITableViewDragDelegate : NSObjectProtocol {
  func tableView(_ tableView: UITableView, itemsForBeginning session: UIDragSession, at indexPath: IndexPath) -> [UIDragItem]
  optional func tableView(_ tableView: UITableView, itemsForAddingTo session: UIDragSession, at indexPath: IndexPath, point: CGPoint) -> [UIDragItem]
  optional func tableView(_ tableView: UITableView, dragPreviewParametersForRowAt indexPath: IndexPath) -> UIDragPreviewParameters?
  optional func tableView(_ tableView: UITableView, dragSessionWillBegin session: UIDragSession)
  optional func tableView(_ tableView: UITableView, dragSessionDidEnd session: UIDragSession)
  optional func tableView(_ tableView: UITableView, dragSessionAllowsMoveOperation session: UIDragSession) -> Bool
  optional func tableView(_ tableView: UITableView, dragSessionIsRestrictedToDraggingApplication session: UIDragSession) -> Bool
}
@available(iOS 11.0, *)
protocol UITableViewDropDelegate : NSObjectProtocol {
  func tableView(_ tableView: UITableView, performDropWith coordinator: UITableViewDropCoordinator)
  optional func tableView(_ tableView: UITableView, canHandle session: UIDropSession) -> Bool
  optional func tableView(_ tableView: UITableView, dropSessionDidEnter session: UIDropSession)
  optional func tableView(_ tableView: UITableView, dropSessionDidUpdate session: UIDropSession, withDestinationIndexPath destinationIndexPath: IndexPath?) -> UITableViewDropProposal
  optional func tableView(_ tableView: UITableView, dropSessionDidExit session: UIDropSession)
  optional func tableView(_ tableView: UITableView, dropSessionDidEnd session: UIDropSession)
  optional func tableView(_ tableView: UITableView, dropPreviewParametersForRowAt indexPath: IndexPath) -> UIDragPreviewParameters?
}
extension UITableViewDropProposal {
  @available(iOS 11.0, *)
  enum Intent : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unspecified
    case insertAtDestinationIndexPath
    case insertIntoDestinationIndexPath
    case automatic
  }
}
@available(iOS 11.0, *)
class UITableViewDropProposal : UIDropProposal {
  init(operation: UIDropOperation, intent: UITableViewDropProposal.Intent)
  var intent: UITableViewDropProposal.Intent { get }
}
@available(iOS 11.0, *)
protocol UITableViewDropCoordinator : NSObjectProtocol {
  var items: [UITableViewDropItem] { get }
  var destinationIndexPath: IndexPath? { get }
  var proposal: UITableViewDropProposal { get }
  var session: UIDropSession { get }
  func drop(_ dragItem: UIDragItem, to placeholder: UITableViewDropPlaceholder) -> UITableViewDropPlaceholderContext
  func drop(_ dragItem: UIDragItem, toRowAt indexPath: IndexPath) -> UIDragAnimating
  func drop(_ dragItem: UIDragItem, intoRowAt indexPath: IndexPath, rect: CGRect) -> UIDragAnimating
  func drop(_ dragItem: UIDragItem, to target: UIDragPreviewTarget) -> UIDragAnimating
}
@available(iOS 11.0, *)
class UITableViewPlaceholder : NSObject {
  init(insertionIndexPath: IndexPath, reuseIdentifier: String, rowHeight: CGFloat)
  var cellUpdateHandler: ((UITableViewCell) -> Void)?
}
@available(iOS 11.0, *)
class UITableViewDropPlaceholder : UITableViewPlaceholder {
  var previewParametersProvider: ((UITableViewCell) -> UIDragPreviewParameters?)?
}
@available(iOS 11.0, *)
protocol UITableViewDropItem : NSObjectProtocol {
  var dragItem: UIDragItem { get }
  var sourceIndexPath: IndexPath? { get }
  var previewSize: CGSize { get }
}
@available(iOS 11.0, *)
protocol UITableViewDropPlaceholderContext : UIDragAnimating {
  var dragItem: UIDragItem { get }
  func commitInsertion(dataSourceUpdates: (IndexPath) -> Void) -> Bool
  func deletePlaceholder() -> Bool
}
