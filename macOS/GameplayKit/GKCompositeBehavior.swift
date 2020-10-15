
class GKCompositeBehavior : GKBehavior {
  var behaviorCount: Int { get }
  convenience init(behaviors: [GKBehavior])
  convenience init(behaviors: [GKBehavior], andWeights weights: [NSNumber])
  func setWeight(_ weight: Float, for behavior: GKBehavior)
  func weight(for behavior: GKBehavior) -> Float
  func remove(_ behavior: GKBehavior)
  func removeAllBehaviors()
}
