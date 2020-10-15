
extension NSCollectionViewTransitionLayout {
  typealias AnimatedKey = String
}
@available(macOS 10.11, *)
class NSCollectionViewTransitionLayout : NSCollectionViewLayout {
  var transitionProgress: CGFloat
  var currentLayout: NSCollectionViewLayout { get }
  var nextLayout: NSCollectionViewLayout { get }
  init(currentLayout: NSCollectionViewLayout, nextLayout newLayout: NSCollectionViewLayout)
  func updateValue(_ value: CGFloat, forAnimatedKey key: NSCollectionViewTransitionLayout.AnimatedKey)
  func value(forAnimatedKey key: NSCollectionViewTransitionLayout.AnimatedKey) -> CGFloat
}
