
extension NSCollectionView {
  @available(macOS 10.11, *)
  enum ScrollDirection : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case vertical
    case horizontal
  }
  @available(macOS 10.11, *)
  class let elementKindSectionHeader: String
  @available(macOS 10.11, *)
  class let elementKindSectionFooter: String
}
@available(macOS 10.11, *)
class NSCollectionViewFlowLayoutInvalidationContext : NSCollectionViewLayoutInvalidationContext {
  var invalidateFlowLayoutDelegateMetrics: Bool
  var invalidateFlowLayoutAttributes: Bool
}
protocol NSCollectionViewDelegateFlowLayout : NSCollectionViewDelegate {
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> NSSize
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, insetForSectionAt section: Int) -> NSEdgeInsets
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> NSSize
  @available(macOS 10.11, *)
  optional func collectionView(_ collectionView: NSCollectionView, layout collectionViewLayout: NSCollectionViewLayout, referenceSizeForFooterInSection section: Int) -> NSSize
}
@available(macOS 10.11, *)
class NSCollectionViewFlowLayout : NSCollectionViewLayout {
  var minimumLineSpacing: CGFloat
  var minimumInteritemSpacing: CGFloat
  var itemSize: NSSize
  var estimatedItemSize: NSSize
  var scrollDirection: NSCollectionView.ScrollDirection
  var headerReferenceSize: NSSize
  var footerReferenceSize: NSSize
  var sectionInset: NSEdgeInsets
  @available(macOS 10.12, *)
  var sectionHeadersPinToVisibleBounds: Bool
  @available(macOS 10.12, *)
  var sectionFootersPinToVisibleBounds: Bool
  @available(macOS 10.12, *)
  func section(atIndexIsCollapsed sectionIndex: Int) -> Bool
  @available(macOS 10.12, *)
  func collapseSection(at sectionIndex: Int)
  @available(macOS 10.12, *)
  func expandSection(at sectionIndex: Int)
}
