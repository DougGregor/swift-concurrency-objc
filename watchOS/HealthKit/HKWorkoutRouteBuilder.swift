
@available(watchOS 4.0, *)
class HKWorkoutRouteBuilder : HKSeriesBuilder {
  init(healthStore: HKHealthStore, device: HKDevice?)
  func addMetadata(_ metadata: [String : Any], completion: @escaping (Bool, Error?) -> Void)
  func finishRoute(with workout: HKWorkout, metadata: [String : Any]?, completion: @escaping (HKWorkoutRoute?, Error?) -> Void)
}
