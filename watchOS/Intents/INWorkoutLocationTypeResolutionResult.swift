
@available(watchOS 3.2, *)
class INWorkoutLocationTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedWorkoutLocationType: INWorkoutLocationType) -> Self
  class func confirmationRequired(with workoutLocationTypeToConfirm: INWorkoutLocationType) -> Self
}
