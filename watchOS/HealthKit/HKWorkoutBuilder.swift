
@available(watchOS 5.0, *)
class HKWorkoutBuilder : NSObject {
  @NSCopying var device: HKDevice? { get }
  var startDate: Date? { get }
  var endDate: Date? { get }
  @NSCopying var workoutConfiguration: HKWorkoutConfiguration { get }
  var metadata: [String : Any] { get }
  var workoutEvents: [HKWorkoutEvent] { get }
  init(healthStore: HKHealthStore, configuration: HKWorkoutConfiguration, device: HKDevice?)
  func beginCollection(withStart startDate: Date, completion: @escaping (Bool, Error?) -> Void)
  func beginCollection(withStart startDate: Date) async throws -> Bool
  func add(_ samples: [HKSample], completion: @escaping (Bool, Error?) -> Void)
  func add(_ samples: [HKSample]) async throws -> Bool
  func addWorkoutEvents(_ workoutEvents: [HKWorkoutEvent], completion: @escaping (Bool, Error?) -> Void)
  func addWorkoutEvents(_ workoutEvents: [HKWorkoutEvent]) async throws -> Bool
  func addMetadata(_ metadata: [String : Any], completion: @escaping (Bool, Error?) -> Void)
  func addMetadata(_ metadata: [String : Any]) async throws -> Bool
  func endCollection(withEnd endDate: Date, completion: @escaping (Bool, Error?) -> Void)
  func endCollection(withEnd endDate: Date) async throws -> Bool
  func finishWorkout(completion: @escaping (HKWorkout?, Error?) -> Void)
  func finishWorkout() async throws -> HKWorkout
  func discardWorkout()
  func elapsedTime(at date: Date) -> TimeInterval
  func statistics(for quantityType: HKQuantityType) -> HKStatistics?
  func seriesBuilder(for seriesType: HKSeriesType) -> HKSeriesBuilder?
}
