
@available(macOS 10.15, *)
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
@available(macOS 10.15, *)
class NSCollectionViewDiffableDataSourceReference : NSObject, NSCollectionViewDataSource {
  init(collectionView: NSCollectionView, itemProvider: @escaping NSCollectionViewDiffableDataSourceReferenceItemProvider)
  func snapshot() -> NSDiffableDataSourceSnapshotReference
  func applySnapshot(_ snapshot: NSDiffableDataSourceSnapshotReference, animatingDifferences: Bool)
  func itemIdentifier(for indexPath: IndexPath) -> Any?
  func indexPath(forItemIdentifier identifier: Any) -> IndexPath?
  var supplementaryViewProvider: NSCollectionViewDiffableDataSourceReferenceSupplementaryViewProvider?
}
typealias NSCollectionViewDiffableDataSourceReferenceItemProvider = (NSCollectionView, IndexPath, Any) -> NSCollectionViewItem?
typealias NSCollectionViewDiffableDataSourceReferenceSupplementaryViewProvider = (NSCollectionView, String, IndexPath) -> NSView?
