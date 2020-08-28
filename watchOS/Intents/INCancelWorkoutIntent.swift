
@available(watchOS 3.2, *)
class INCancelWorkoutIntent : INIntent {
  init(workoutName: INSpeakableString?)
  @NSCopying var workoutName: INSpeakableString? { get }
}
@available(watchOS 3.2, *)
protocol INCancelWorkoutIntentHandling : NSObjectProtocol {
  func handle(intent: INCancelWorkoutIntent, completion: @escaping (INCancelWorkoutIntentResponse) -> Void)
  func handle(intent: INCancelWorkoutIntent) async -> INCancelWorkoutIntentResponse
  optional func confirm(intent: INCancelWorkoutIntent, completion: @escaping (INCancelWorkoutIntentResponse) -> Void)
  optional func confirm(intent: INCancelWorkoutIntent) async -> INCancelWorkoutIntentResponse
  optional func resolveWorkoutName(for intent: INCancelWorkoutIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveWorkoutName(for intent: INCancelWorkoutIntent) async -> INSpeakableStringResolutionResult
}
