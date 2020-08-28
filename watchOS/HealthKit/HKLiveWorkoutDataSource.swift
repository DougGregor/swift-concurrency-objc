
@available(watchOS 5.0, *)
class HKLiveWorkoutDataSource : NSObject {
  var typesToCollect: Set<HKQuantityType> { get }
  init(healthStore: HKHealthStore, workoutConfiguration configuration: HKWorkoutConfiguration?)
  func enableCollection(for quantityType: HKQuantityType, predicate: NSPredicate?)
  func disableCollection(for quantityType: HKQuantityType)
}
