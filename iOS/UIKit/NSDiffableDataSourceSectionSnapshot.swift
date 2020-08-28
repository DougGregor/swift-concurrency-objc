
@available(iOS 14.0, *)
class NSDiffableDataSourceSectionSnapshotReference : NSObject, NSCopying {
  func appendItems(_ items: [Any])
  func appendItems(_ items: [Any], intoParentItem parentItem: Any?)
  func insertItems(_ items: [Any], beforeItem beforeIdentifier: Any)
  func insertItems(_ items: [Any], afterItem afterIdentifier: Any)
  func deleteItems(_ items: [Any])
  func deleteAllItems()
  func expandItems(_ items: [Any])
  func collapseItems(_ items: [Any])
  func replaceChildren(ofParentItem parentItem: Any, with snapshot: NSDiffableDataSourceSectionSnapshotReference)
  func insert(_ snapshot: NSDiffableDataSourceSectionSnapshotReference, beforeItem item: Any)
  func insert(_ snapshot: NSDiffableDataSourceSectionSnapshotReference, afterItem item: Any) -> Any
  func isExpanded(_ item: Any) -> Bool
  func isVisible(_ item: Any) -> Bool
  func containsItem(_ item: Any) -> Bool
  func level(ofItem item: Any) -> Int
  func index(ofItem item: Any) -> Int
  func expandedItems() -> [Any]
  func parent(ofChildItem childItem: Any) -> Any?
  func ofParentItem(_ parentItem: Any) -> NSDiffableDataSourceSectionSnapshotReference
  func ofParentItem(_ parentItem: Any, includingParentItem: Bool) -> NSDiffableDataSourceSectionSnapshotReference
  var items: [Any] { get }
  var rootItems: [Any] { get }
  var visibleItems: [Any] { get }
  func visualDescription() -> String
}
