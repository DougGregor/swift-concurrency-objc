
@available(tvOS 10.0, *)
class INStartWorkoutIntent : INIntent {
  init(__workoutName workoutName: INSpeakableString?, goalValue: NSNumber?, workoutGoalUnitType: INWorkoutGoalUnitType, workoutLocationType: INWorkoutLocationType, isOpenEnded: NSNumber?)
  @NSCopying var workoutName: INSpeakableString? { get }
  @NSCopying var __goalValue: NSNumber? { get }
  var workoutGoalUnitType: INWorkoutGoalUnitType { get }
  var workoutLocationType: INWorkoutLocationType { get }
  @NSCopying var __isOpenEnded: NSNumber? { get }
}
@available(tvOS 10.0, *)
protocol INStartWorkoutIntentHandling : NSObjectProtocol {
  func handle(intent: INStartWorkoutIntent, completion: @escaping (INStartWorkoutIntentResponse) -> Void)
  func handle(intent: INStartWorkoutIntent) async -> INStartWorkoutIntentResponse
  optional func confirm(intent: INStartWorkoutIntent, completion: @escaping (INStartWorkoutIntentResponse) -> Void)
  optional func confirm(intent: INStartWorkoutIntent) async -> INStartWorkoutIntentResponse
  optional func resolveWorkoutName(for intent: INStartWorkoutIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveGoalValue(for intent: INStartWorkoutIntent, with completion: @escaping (INDoubleResolutionResult) -> Void)
  optional func resolveWorkoutGoalUnitType(for intent: INStartWorkoutIntent, with completion: @escaping (INWorkoutGoalUnitTypeResolutionResult) -> Void)
  optional func resolveWorkoutLocationType(for intent: INStartWorkoutIntent, with completion: @escaping (INWorkoutLocationTypeResolutionResult) -> Void)
  optional func resolveIsOpenEnded(for intent: INStartWorkoutIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
}
