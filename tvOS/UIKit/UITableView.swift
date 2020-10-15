
extension UITableView {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case plain
    case grouped
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
  @available(tvOS 5.0, *)
  class let automaticDimension: CGFloat
  class let selectionDidChangeNotification: NSNotification.Name
  @available(tvOS 11.0, *)
  enum SeparatorInsetReference : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case fromCellEdges
    case fromAutomaticInsets
  }
}
extension UITableViewRowAction {
}
@available(tvOS 9.0, *)
class UITableViewFocusUpdateContext : UIFocusUpdateContext {
  var previouslyFocusedIndexPath: IndexPath? { get }
  var nextFocusedIndexPath: IndexPath? { get }
}
protocol UITableViewDelegate : UIScrollViewDelegate {
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int)
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
  @available(tvOS 7.0, *)
  optional func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath)
  @available(tvOS 6.0, *)
  optional func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?
  @available(tvOS 3.0, *)
  optional func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath?
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
  @available(tvOS 3.0, *)
  optional func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int
  @available(tvOS, introduced: 5.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool
  @available(tvOS, introduced: 5.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool
  @available(tvOS, introduced: 5.0, deprecated: 13.0)
  optional func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?)
  @available(tvOS 9.0, *)
  optional func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 9.0, *)
  optional func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool
  @available(tvOS 9.0, *)
  optional func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator)
  @available(tvOS 9.0, *)
  optional func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath?
}
@available(tvOS 2.0, *)
class UITableView : UIScrollView, NSCoding, UIDataSourceTranslating {
  init(frame: CGRect, style: UITableView.Style)
  var style: UITableView.Style { get }
  weak var dataSource: @sil_weak UITableViewDataSource?
  @available(tvOS 10.0, *)
  weak var prefetchDataSource: @sil_weak UITableViewDataSourcePrefetching?
  var rowHeight: CGFloat
  var sectionHeaderHeight: CGFloat
  var sectionFooterHeight: CGFloat
  @available(tvOS 7.0, *)
  var estimatedRowHeight: CGFloat
  @available(tvOS 7.0, *)
  var estimatedSectionHeaderHeight: CGFloat
  @available(tvOS 7.0, *)
  var estimatedSectionFooterHeight: CGFloat
  @available(tvOS 7.0, *)
  var separatorInset: UIEdgeInsets
  @available(tvOS 11.0, *)
  var separatorInsetReference: UITableView.SeparatorInsetReference
  @available(tvOS 3.2, *)
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
  @available(tvOS 6.0, *)
  func headerView(forSection section: Int) -> UITableViewHeaderFooterView?
  @available(tvOS 6.0, *)
  func footerView(forSection section: Int) -> UITableViewHeaderFooterView?
  func scrollToRow(at indexPath: IndexPath, at scrollPosition: UITableView.ScrollPosition, animated: Bool)
  func scrollToNearestSelectedRow(at scrollPosition: UITableView.ScrollPosition, animated: Bool)
  @available(tvOS 11.0, *)
  func performBatchUpdates(_ updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  func beginUpdates()
  func endUpdates()
  func insertSections(_ sections: IndexSet, with animation: UITableView.RowAnimation)
  func deleteSections(_ sections: IndexSet, with animation: UITableView.RowAnimation)
  @available(tvOS 3.0, *)
  func reloadSections(_ sections: IndexSet, with animation: UITableView.RowAnimation)
  @available(tvOS 5.0, *)
  func moveSection(_ section: Int, toSection newSection: Int)
  func insertRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation)
  func deleteRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation)
  @available(tvOS 3.0, *)
  func reloadRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation)
  @available(tvOS 5.0, *)
  func moveRow(at indexPath: IndexPath, to newIndexPath: IndexPath)
  @available(tvOS 11.0, *)
  var hasUncommittedUpdates: Bool { get }
  func reloadData()
  @available(tvOS 3.0, *)
  func reloadSectionIndexTitles()
  var isEditing: Bool
  func setEditing(_ editing: Bool, animated: Bool)
  @available(tvOS 3.0, *)
  var allowsSelection: Bool
  var allowsSelectionDuringEditing: Bool
  @available(tvOS 5.0, *)
  var allowsMultipleSelection: Bool
  @available(tvOS 5.0, *)
  var allowsMultipleSelectionDuringEditing: Bool
  var indexPathForSelectedRow: IndexPath? { get }
  @available(tvOS 5.0, *)
  var indexPathsForSelectedRows: [IndexPath]? { get }
  func selectRow(at indexPath: IndexPath?, animated: Bool, scrollPosition: UITableView.ScrollPosition)
  func deselectRow(at indexPath: IndexPath, animated: Bool)
  var sectionIndexMinimumDisplayRowCount: Int
  @available(tvOS 6.0, *)
  var sectionIndexColor: UIColor?
  @available(tvOS 7.0, *)
  var sectionIndexBackgroundColor: UIColor?
  @available(tvOS 6.0, *)
  var sectionIndexTrackingBackgroundColor: UIColor?
  @available(tvOS 9.0, *)
  var cellLayoutMarginsFollowReadableWidth: Bool
  @available(tvOS 11.0, *)
  var insetsContentViewsToSafeArea: Bool
  var tableHeaderView: UIView?
  var tableFooterView: UIView?
  func dequeueReusableCell(withIdentifier identifier: String) -> UITableViewCell?
  @available(tvOS 6.0, *)
  func dequeueReusableCell(withIdentifier identifier: String, for indexPath: IndexPath) -> UITableViewCell
  @available(tvOS 6.0, *)
  func dequeueReusableHeaderFooterView(withIdentifier identifier: String) -> UITableViewHeaderFooterView?
  @available(tvOS 5.0, *)
  func register(_ nib: UINib?, forCellReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func register(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(tvOS 6.0, *)
  func register(_ aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)
  @available(tvOS 9.0, *)
  var remembersLastFocusedIndexPath: Bool
}
protocol UITableViewDataSource : NSObjectProtocol {
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  @available(tvOS 2.0, *)
  optional func numberOfSections(in tableView: UITableView) -> Int
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
  @available(tvOS 2.0, *)
  optional func sectionIndexTitles(for tableView: UITableView) -> [String]?
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
}
protocol UITableViewDataSourcePrefetching : NSObjectProtocol {
  @available(tvOS 2.0, *)
  func tableView(_ tableView: UITableView, prefetchRowsAt indexPaths: [IndexPath])
  @available(tvOS 2.0, *)
  optional func tableView(_ tableView: UITableView, cancelPrefetchingForRowsAt indexPaths: [IndexPath])
}
extension UITableViewDropProposal {
}
