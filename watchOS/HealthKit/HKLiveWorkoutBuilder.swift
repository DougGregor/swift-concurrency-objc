
@available(watchOS 5.0, *)
protocol HKLiveWorkoutBuilderDelegate : NSObjectProtocol {
  @asyncHandler func workoutBuilder(_ workoutBuilder: HKLiveWorkoutBuilder, didCollectDataOf collectedTypes: Set<HKSampleType>)
  @asyncHandler func workoutBuilderDidCollectEvent(_ workoutBuilder: HKLiveWorkoutBuilder)
}
@available(watchOS 5.0, *)
class HKLiveWorkoutBuilder : HKWorkoutBuilder {
  weak var delegate: @sil_weak HKLiveWorkoutBuilderDelegate?
  weak var workoutSession: @sil_weak HKWorkoutSession? { get }
  var shouldCollectWorkoutEvents: Bool
  var dataSource: HKLiveWorkoutDataSource?
  var elapsedTime: TimeInterval { get }
}
