
enum HKWorkoutSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notStarted
  case running
  case ended
  case paused
  case prepared
  case stopped
}
class HKWorkoutSession : NSObject, NSSecureCoding {
  var activityType: HKWorkoutActivityType { get }
  var locationType: HKWorkoutSessionLocationType { get }
  @NSCopying var workoutConfiguration: HKWorkoutConfiguration { get }
  weak var delegate: @sil_weak HKWorkoutSessionDelegate?
  var state: HKWorkoutSessionState { get }
  var startDate: Date? { get }
  var endDate: Date? { get }
  init(activityType: HKWorkoutActivityType, locationType: HKWorkoutSessionLocationType)
  init(configuration workoutConfiguration: HKWorkoutConfiguration) throws
  init(healthStore: HKHealthStore, configuration workoutConfiguration: HKWorkoutConfiguration) throws
  func prepare()
  func startActivity(with date: Date?)
  func stopActivity(with date: Date?)
  func end()
  func pause()
  func resume()
  func associatedWorkoutBuilder() -> HKLiveWorkoutBuilder
}
protocol HKWorkoutSessionDelegate : NSObjectProtocol {
  func workoutSession(_ workoutSession: HKWorkoutSession, didChangeTo toState: HKWorkoutSessionState, from fromState: HKWorkoutSessionState, date: Date)
  func workoutSession(_ workoutSession: HKWorkoutSession, didFailWithError error: Error)
  @available(iOS 10.0, *)
  optional func workoutSession(_ workoutSession: HKWorkoutSession, didGenerate event: HKWorkoutEvent)
}
