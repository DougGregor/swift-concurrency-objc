
@available(watchOS 3.2, *)
class INEndWorkoutIntent : INIntent {
  init(workoutName: INSpeakableString?)
  @NSCopying var workoutName: INSpeakableString? { get }
}
@available(watchOS 3.2, *)
protocol INEndWorkoutIntentHandling : NSObjectProtocol {
  func handle(intent: INEndWorkoutIntent, completion: @escaping (INEndWorkoutIntentResponse) -> Void)
  func handle(intent: INEndWorkoutIntent) async -> INEndWorkoutIntentResponse
  optional func confirm(intent: INEndWorkoutIntent, completion: @escaping (INEndWorkoutIntentResponse) -> Void)
  optional func confirm(intent: INEndWorkoutIntent) async -> INEndWorkoutIntentResponse
  optional func resolveWorkoutName(for intent: INEndWorkoutIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
