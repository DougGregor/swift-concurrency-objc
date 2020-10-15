
@available(tvOS 13.0, *)
class NSDiffableDataSourceSnapshotReference : NSObject, NSCopying {
  var numberOfItems: Int { get }
  var numberOfSections: Int { get }
  var sectionIdentifiers: [Any] { get }
  var itemIdentifiers: [Any] { get }
  func numberOfItems(inSection sectionIdentifier: Any) -> Int
  func itemIdentifiersInSection(withIdentifier sectionIdentifier: Any) -> [Any]
  func sectionIdentifier(forSectionContainingItemIdentifier itemIdentifier: Any) -> Any?
  func index(ofItemIdentifier itemIdentifier: Any) -> Int
  func index(ofSectionIdentifier sectionIdentifier: Any) -> Int
  func appendItems(withIdentifiers identifiers: [Any])
  func appendItems(withIdentifiers identifiers: [Any], intoSectionWithIdentifier sectionIdentifier: Any)
  func insertItems(withIdentifiers identifiers: [Any], beforeItemWithIdentifier itemIdentifier: Any)
  func insertItems(withIdentifiers identifiers: [Any], afterItemWithIdentifier itemIdentifier: Any)
  func deleteItems(withIdentifiers identifiers: [Any])
  func deleteAllItems()
  func moveItem(withIdentifier fromIdentifier: Any, beforeItemWithIdentifier toIdentifier: Any)
  func moveItem(withIdentifier fromIdentifier: Any, afterItemWithIdentifier toIdentifier: Any)
  func reloadItems(withIdentifiers identifiers: [Any])
  func appendSections(withIdentifiers sectionIdentifiers: [Any])
  func insertSections(withIdentifiers sectionIdentifiers: [Any], beforeSectionWithIdentifier toSectionIdentifier: Any)
  func insertSections(withIdentifiers sectionIdentifiers: [Any], afterSectionWithIdentifier toSectionIdentifier: Any)
  func deleteSections(withIdentifiers sectionIdentifiers: [Any])
  func moveSection(withIdentifier fromSectionIdentifier: Any, beforeSectionWithIdentifier toSectionIdentifier: Any)
  func moveSection(withIdentifier fromSectionIdentifier: Any, afterSectionWithIdentifier toSectionIdentifier: Any)
  func reloadSections(withIdentifiers sectionIdentifiers: [Any])
}
typealias UICollectionViewDiffableDataSourceReferenceCellProvider = (UICollectionView, IndexPath, Any) -> UICollectionViewCell?
typealias UICollectionViewDiffableDataSourceReferenceSupplementaryViewProvider = (UICollectionView, String, IndexPath) -> UICollectionReusableView?
@available(tvOS 14.0, *)
class __NSDiffableDataSourceSectionTransaction : NSObject {
  var sectionIdentifier: Any { get }
  var initialSnapshot: NSDiffableDataSourceSectionSnapshotReference { get }
  var finalSnapshot: NSDiffableDataSourceSectionSnapshotReference { get }
  var difference: CollectionDifference<Any> { get }
}
@available(tvOS 14.0, *)
class __NSDiffableDataSourceTransaction : NSObject {
  var initialSnapshot: NSDiffableDataSourceSnapshotReference { get }
  var finalSnapshot: NSDiffableDataSourceSnapshotReference { get }
  var difference: CollectionDifference<Any> { get }
  var sectionTransactions: [__NSDiffableDataSourceSectionTransaction] { get }
}
@available(tvOS 14.0, *)
class __UICollectionViewDiffableDataSourceReorderingHandlers : NSObject, NSCopying {
  var canReorderItemHandler: ((Any) -> Bool)?
  var willReorderHandler: ((__NSDiffableDataSourceTransaction) -> Void)?
  var didReorderHandler: ((__NSDiffableDataSourceTransaction) -> Void)?
}
@available(tvOS 14.0, *)
class __UICollectionViewDiffableDataSourceSectionSnapshotHandlers : NSObject, NSCopying {
  var shouldExpandItemHandler: ((Any) -> Bool)?
  var willExpandItemHandler: ((Any) -> Void)?
  var shouldCollapseItemHandler: ((Any) -> Bool)?
  var willCollapseItemHandler: ((Any) -> Void)?
  var snapshotForExpandingParentItemHandler: ((Any, NSDiffableDataSourceSectionSnapshotReference) -> NSDiffableDataSourceSectionSnapshotReference)?
}
@available(tvOS 13.0, *)
class UICollectionViewDiffableDataSourceReference : NSObject, UICollectionViewDataSource {
  init(collectionView: UICollectionView, cellProvider: @escaping UICollectionViewDiffableDataSourceReferenceCellProvider)
  var supplementaryViewProvider: UICollectionViewDiffableDataSourceReferenceSupplementaryViewProvider?
  func snapshot() -> NSDiffableDataSourceSnapshotReference
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool, completion: (() -> Void)? = nil)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool) async
  func itemIdentifier(for indexPath: IndexPath) -> Any?
  func indexPath(forItemIdentifier identifier: Any) -> IndexPath?
  @available(tvOS 14.0, *)
  @NSCopying var reorderingHandlers: __UICollectionViewDiffableDataSourceReorderingHandlers
  @available(tvOS 14.0, *)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSectionSnapshotReference, toSection sectionIdentifier: Any, animatingDifferences: Bool)
  @available(tvOS 14.0, *)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSectionSnapshotReference, toSection sectionIdentifier: Any, animatingDifferences: Bool, completion: (() -> Void)? = nil)
  @available(tvOS 14.0, *)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSectionSnapshotReference, toSection sectionIdentifier: Any, animatingDifferences: Bool) async
  @available(tvOS 14.0, *)
  func snapshot(forSection section: Any) -> NSDiffableDataSourceSectionSnapshotReference
  @available(tvOS 14.0, *)
  @NSCopying var sectionSnapshotHandlers: __UICollectionViewDiffableDataSourceSectionSnapshotHandlers
}
typealias UITableViewDiffableDataSourceReferenceCellProvider = (UITableView, IndexPath, Any) -> UITableViewCell?
@available(tvOS 13.0, *)
class UITableViewDiffableDataSourceReference : NSObject, UITableViewDataSource {
  init(tableView: UITableView, cellProvider: @escaping UITableViewDiffableDataSourceReferenceCellProvider)
  func snapshot() -> NSDiffableDataSourceSnapshotReference
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool, completion: (() -> Void)? = nil)
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool) async
  func itemIdentifier(for indexPath: IndexPath) -> Any?
  func indexPath(forItemIdentifier identifier: Any) -> IndexPath?
  var defaultRowAnimation: UITableView.RowAnimation
}
