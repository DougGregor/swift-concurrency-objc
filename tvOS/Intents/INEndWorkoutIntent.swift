
@available(tvOS 10.0, *)
class INEndWorkoutIntent : INIntent {
  init(workoutName: INSpeakableString?)
  @NSCopying var workoutName: INSpeakableString? { get }
}
@available(tvOS 10.0, *)
protocol INEndWorkoutIntentHandling : NSObjectProtocol {
  func handle(intent: INEndWorkoutIntent, completion: @escaping (INEndWorkoutIntentResponse) -> Void)
  optional func confirm(intent: INEndWorkoutIntent, completion: @escaping (INEndWorkoutIntentResponse) -> Void)
  optional func resolveWorkoutName(for intent: INEndWorkoutIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
