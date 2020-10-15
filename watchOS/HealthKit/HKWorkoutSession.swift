
@available(watchOS 2.0, *)
enum HKWorkoutSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notStarted
  case running
  case ended
  @available(watchOS 3.0, *)
  case paused
  @available(watchOS 5.0, *)
  case prepared
  @available(watchOS 5.0, *)
  case stopped
}
@available(watchOS 2.0, *)
class HKWorkoutSession : NSObject, NSSecureCoding {
  @available(watchOS, introduced: 2.0, deprecated: 3.0)
  var activityType: HKWorkoutActivityType { get }
  @available(watchOS, introduced: 2.0, deprecated: 3.0)
  var locationType: HKWorkoutSessionLocationType { get }
  @available(watchOS 3.0, *)
  @NSCopying var workoutConfiguration: HKWorkoutConfiguration { get }
  weak var delegate: @sil_weak HKWorkoutSessionDelegate?
  var state: HKWorkoutSessionState { get }
  var startDate: Date? { get }
  var endDate: Date? { get }
  @available(watchOS, introduced: 2.0, deprecated: 3.0)
  init(activityType: HKWorkoutActivityType, locationType: HKWorkoutSessionLocationType)
  @available(watchOS, introduced: 3.0, deprecated: 5.0)
  init(configuration workoutConfiguration: HKWorkoutConfiguration) throws
  @available(watchOS 5.0, *)
  init(healthStore: HKHealthStore, configuration workoutConfiguration: HKWorkoutConfiguration) throws
  @available(watchOS 5.0, *)
  func prepare()
  @available(watchOS 5.0, *)
  func startActivity(with date: Date?)
  @available(watchOS 5.0, *)
  func stopActivity(with date: Date?)
  @available(watchOS 5.0, *)
  func end()
  @available(watchOS 5.0, *)
  func pause()
  @available(watchOS 5.0, *)
  func resume()
  @available(watchOS 5.0, *)
  func associatedWorkoutBuilder() -> HKLiveWorkoutBuilder
}
@available(watchOS 2.0, *)
protocol HKWorkoutSessionDelegate : NSObjectProtocol {
  @asyncHandler func workoutSession(_ workoutSession: HKWorkoutSession, didChangeTo toState: HKWorkoutSessionState, from fromState: HKWorkoutSessionState, date: Date)
  @asyncHandler func workoutSession(_ workoutSession: HKWorkoutSession, didFailWithError error: Error)
  @available(watchOS 3.0, *)
  @asyncHandler optional func workoutSession(_ workoutSession: HKWorkoutSession, didGenerate event: HKWorkoutEvent)
}
