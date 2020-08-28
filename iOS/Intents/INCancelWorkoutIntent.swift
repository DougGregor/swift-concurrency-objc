
@available(iOS 10.0, *)
class INCancelWorkoutIntent : INIntent {
  init(workoutName: INSpeakableString?)
  @NSCopying var workoutName: INSpeakableString? { get }
}
@available(iOS 10.0, *)
protocol INCancelWorkoutIntentHandling : NSObjectProtocol {
  func handle(intent: INCancelWorkoutIntent, completion: @escaping (INCancelWorkoutIntentResponse) -> Void)
  optional func confirm(intent: INCancelWorkoutIntent, completion: @escaping (INCancelWorkoutIntentResponse) -> Void)
  optional func resolveWorkoutName(for intent: INCancelWorkoutIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
