
@available(macOS 11.0, *)
class NSTableViewDiffableDataSourceReference<SectionIdentifierType, ItemIdentifierType> : NSObject, NSTableViewDataSource where SectionIdentifierType : AnyObject, ItemIdentifierType : AnyObject {
  init(tableView: NSTableView, cellProvider: @escaping NSTableViewDiffableDataSourceReferenceCellProvider)
  func snapshot() -> NSDiffableDataSourceSnapshotReference
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool, completion: (() -> Void)? = nil)
  func applySnapshotAsync(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool) async
  func itemIdentifier(forRow row: Int) -> ItemIdentifierType?
  func row(forItemIdentifier identifier: ItemIdentifierType) -> Int
  func sectionIdentifier(forRow row: Int) -> SectionIdentifierType?
  func row(forSectionIdentifier identifier: SectionIdentifierType) -> Int
  var rowViewProvider: NSTableViewDiffableDataSourceReferenceRowProvider?
  var sectionHeaderViewProvider: NSTableViewDiffableDataSourceReferenceSectionHeaderViewProvider?
  var defaultRowAnimation: NSTableView.AnimationOptions
}
typealias NSTableViewDiffableDataSourceReferenceCellProvider = (NSTableView, NSTableColumn, Int, Any) -> NSView
typealias NSTableViewDiffableDataSourceReferenceRowProvider = (NSTableView, Int, Any) -> NSTableRowView
typealias NSTableViewDiffableDataSourceReferenceSectionHeaderViewProvider = (NSTableView, Int, Any) -> NSView
