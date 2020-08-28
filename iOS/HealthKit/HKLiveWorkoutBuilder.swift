
protocol HKLiveWorkoutBuilderDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func workoutBuilder(_ workoutBuilder: HKLiveWorkoutBuilder, didCollectDataOf collectedTypes: Set<HKSampleType>)
  func workoutBuilderDidCollectEvent(_ workoutBuilder: HKLiveWorkoutBuilder)
}
class HKLiveWorkoutBuilder : HKWorkoutBuilder {
  weak var delegate: @sil_weak HKLiveWorkoutBuilderDelegate?
  weak var workoutSession: @sil_weak HKWorkoutSession? { get }
  var shouldCollectWorkoutEvents: Bool
  var dataSource: HKLiveWorkoutDataSource?
  var elapsedTime: TimeInterval { get }
}
