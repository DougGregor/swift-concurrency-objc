
@available(macOS 10.11, *)
class GKBehavior : NSObject, NSFastEnumeration, NSCopying {
  var goalCount: Int { get }
  convenience init(goal: GKGoal, weight: Float)
  convenience init(goals: [GKGoal])
  convenience init(goals: [GKGoal], andWeights weights: [NSNumber])
  convenience init(weightedGoals: [GKGoal : NSNumber])
  func setWeight(_ weight: Float, for goal: GKGoal)
  func weight(for goal: GKGoal) -> Float
  func remove(_ goal: GKGoal)
  func removeAllGoals()
  subscript(idx: Int) -> GKGoal { get }
  subscript(goal: GKGoal) -> NSNumber!
}
