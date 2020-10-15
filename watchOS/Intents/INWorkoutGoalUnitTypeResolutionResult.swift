
@available(watchOS 3.2, *)
class INWorkoutGoalUnitTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedWorkoutGoalUnitType: INWorkoutGoalUnitType) -> Self
  class func confirmationRequired(with workoutGoalUnitTypeToConfirm: INWorkoutGoalUnitType) -> Self
}
