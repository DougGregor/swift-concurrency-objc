
extension UICollectionViewFlowLayout {
  @available(tvOS 10.0, *)
  class let automaticSize: CGSize
  @available(tvOS 11.0, *)
  enum SectionInsetReference : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case fromContentInset
    case fromSafeArea
    case fromLayoutMargins
  }
}
@available(tvOS 7.0, *)
class UICollectionViewFlowLayoutInvalidationContext : UICollectionViewLayoutInvalidationContext {
  var invalidateFlowLayoutDelegateMetrics: Bool
  var invalidateFlowLayoutAttributes: Bool
}
protocol UICollectionViewDelegateFlowLayout : UICollectionViewDelegate {
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize
  @available(tvOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize
}
@available(tvOS 6.0, *)
class UICollectionViewFlowLayout : UICollectionViewLayout {
  var minimumLineSpacing: CGFloat
  var minimumInteritemSpacing: CGFloat
  var itemSize: CGSize
  @available(tvOS 8.0, *)
  var estimatedItemSize: CGSize
  var scrollDirection: UICollectionView.ScrollDirection
  var headerReferenceSize: CGSize
  var footerReferenceSize: CGSize
  var sectionInset: UIEdgeInsets
  @available(tvOS 11.0, *)
  var sectionInsetReference: UICollectionViewFlowLayout.SectionInsetReference
  @available(tvOS 9.0, *)
  var sectionHeadersPinToVisibleBounds: Bool
  @available(tvOS 9.0, *)
  var sectionFootersPinToVisibleBounds: Bool
}
