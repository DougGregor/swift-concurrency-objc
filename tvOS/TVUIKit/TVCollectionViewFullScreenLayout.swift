
@available(tvOS 13.0, *)
class TVCollectionViewFullScreenLayoutAttributes : UICollectionViewLayoutAttributes {
  var cornerRadius: CGFloat
  var contentBleed: UIEdgeInsets
  var normalizedPosition: CGFloat
  var maskAmount: CGFloat
  var parallaxOffset: CGFloat
}
@available(tvOS 13.0, *)
protocol TVCollectionViewDelegateFullScreenLayout : UICollectionViewDelegate {
  optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, willCenterCellAt indexPath: IndexPath)
  @asyncHandler optional func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, didCenterCellAt indexPath: IndexPath)
}
@available(tvOS 13.0, *)
class TVCollectionViewFullScreenLayout : UICollectionViewLayout {
  var cornerRadius: CGFloat
  var interitemSpacing: CGFloat
  var parallaxFactor: CGFloat
  var maskAmount: CGFloat
  var maskInset: UIEdgeInsets
  var centerIndexPath: IndexPath? { get }
  var isTransitioningToCenterIndexPath: Bool { get }
}
