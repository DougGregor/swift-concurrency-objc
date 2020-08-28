
@available(watchOS 3.2, *)
class INPauseWorkoutIntent : INIntent {
  init(workoutName: INSpeakableString?)
  @NSCopying var workoutName: INSpeakableString? { get }
}
@available(watchOS 3.2, *)
protocol INPauseWorkoutIntentHandling : NSObjectProtocol {
  func handle(intent: INPauseWorkoutIntent, completion: @escaping (INPauseWorkoutIntentResponse) -> Void)
  func handle(intent: INPauseWorkoutIntent) async -> INPauseWorkoutIntentResponse
  optional func confirm(intent: INPauseWorkoutIntent, completion: @escaping (INPauseWorkoutIntentResponse) -> Void)
  optional func confirm(intent: INPauseWorkoutIntent) async -> INPauseWorkoutIntentResponse
  optional func resolveWorkoutName(for intent: INPauseWorkoutIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
