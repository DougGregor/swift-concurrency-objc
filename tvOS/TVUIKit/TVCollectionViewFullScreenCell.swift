
@available(tvOS 13.0, *)
class TVCollectionViewFullScreenCell : UICollectionViewCell {
  var cornerRadius: CGFloat { get }
  var contentBleed: UIEdgeInsets { get }
  var parallaxOffset: CGFloat { get }
  var normalizedPosition: CGFloat { get }
  var maskAmount: CGFloat { get }
  var maskedBackgroundView: UIView { get }
  var maskedContentView: UIView { get }
  func maskAmountWillChange(_ nextMaskAmount: CGFloat)
  func maskAmountDidChange()
  func normalizedPositionWillChange(_ nextNormalizedPosition: CGFloat)
  func normalizedPositionDidChange()
}
