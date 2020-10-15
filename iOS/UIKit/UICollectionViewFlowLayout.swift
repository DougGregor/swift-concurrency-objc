
extension UICollectionViewFlowLayout {
  @available(iOS 10.0, *)
  class let automaticSize: CGSize
  @available(iOS 11.0, *)
  enum SectionInsetReference : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case fromContentInset
    case fromSafeArea
    case fromLayoutMargins
  }
}
@available(iOS 7.0, *)
class UICollectionViewFlowLayoutInvalidationContext : UICollectionViewLayoutInvalidationContext {
  var invalidateFlowLayoutDelegateMetrics: Bool
  var invalidateFlowLayoutAttributes: Bool
}
protocol UICollectionViewDelegateFlowLayout : UICollectionViewDelegate {
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize
  @available(iOS 6.0, *)
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize
}
@available(iOS 6.0, *)
class UICollectionViewFlowLayout : UICollectionViewLayout {
  var minimumLineSpacing: CGFloat
  var minimumInteritemSpacing: CGFloat
  var itemSize: CGSize
  @available(iOS 8.0, *)
  var estimatedItemSize: CGSize
  var scrollDirection: UICollectionView.ScrollDirection
  var headerReferenceSize: CGSize
  var footerReferenceSize: CGSize
  var sectionInset: UIEdgeInsets
  @available(iOS 11.0, *)
  var sectionInsetReference: UICollectionViewFlowLayout.SectionInsetReference
  @available(iOS 9.0, *)
  var sectionHeadersPinToVisibleBounds: Bool
  @available(iOS 9.0, *)
  var sectionFootersPinToVisibleBounds: Bool
}
