
@available(watchOS 3.2, *)
class INResumeWorkoutIntent : INIntent {
  init(workoutName: INSpeakableString?)
  @NSCopying var workoutName: INSpeakableString? { get }
}
@available(watchOS 3.2, *)
protocol INResumeWorkoutIntentHandling : NSObjectProtocol {
  func handle(intent: INResumeWorkoutIntent, completion: @escaping (INResumeWorkoutIntentResponse) -> Void)
  func handle(intent: INResumeWorkoutIntent) async -> INResumeWorkoutIntentResponse
  optional func confirm(intent: INResumeWorkoutIntent, completion: @escaping (INResumeWorkoutIntentResponse) -> Void)
  optional func confirm(intent: INResumeWorkoutIntent) async -> INResumeWorkoutIntentResponse
  optional func resolveWorkoutName(for intent: INResumeWorkoutIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveWorkoutName(for intent: INResumeWorkoutIntent) async -> INSpeakableStringResolutionResult
}
