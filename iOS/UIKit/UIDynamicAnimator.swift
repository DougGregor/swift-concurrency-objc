
protocol UIDynamicAnimatorDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func dynamicAnimatorWillResume(_ animator: UIDynamicAnimator)
  @available(iOS 7.0, *)
  @asyncHandler optional func dynamicAnimatorDidPause(_ animator: UIDynamicAnimator)
}
@available(iOS 7.0, *)
class UIDynamicAnimator : NSObject {
  init(referenceView view: UIView)
  func addBehavior(_ behavior: UIDynamicBehavior)
  func removeBehavior(_ behavior: UIDynamicBehavior)
  func removeAllBehaviors()
  var referenceView: UIView? { get }
  var behaviors: [UIDynamicBehavior] { get }
  func items(in rect: CGRect) -> [UIDynamicItem]
  func updateItem(usingCurrentState item: UIDynamicItem)
  var isRunning: Bool { get }
  var elapsedTime: TimeInterval { get }
  weak var delegate: @sil_weak UIDynamicAnimatorDelegate?
}
extension UIDynamicAnimator {
  convenience init(collectionViewLayout layout: UICollectionViewLayout)
  func layoutAttributesForCell(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForSupplementaryView(ofKind kind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
  func layoutAttributesForDecorationView(ofKind decorationViewKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes?
}
