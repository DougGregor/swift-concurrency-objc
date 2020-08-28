
@available(iOS 10.0, *)
class INResumeWorkoutIntent : INIntent {
  init(workoutName: INSpeakableString?)
  @NSCopying var workoutName: INSpeakableString? { get }
}
@available(iOS 10.0, *)
protocol INResumeWorkoutIntentHandling : NSObjectProtocol {
  func handle(intent: INResumeWorkoutIntent, completion: @escaping (INResumeWorkoutIntentResponse) -> Void)
  func handle(intent: INResumeWorkoutIntent) async -> INResumeWorkoutIntentResponse
  optional func confirm(intent: INResumeWorkoutIntent, completion: @escaping (INResumeWorkoutIntentResponse) -> Void)
  optional func confirm(intent: INResumeWorkoutIntent) async -> INResumeWorkoutIntentResponse
  optional func resolveWorkoutName(for intent: INResumeWorkoutIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
