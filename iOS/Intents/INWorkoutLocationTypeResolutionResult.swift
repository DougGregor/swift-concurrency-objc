
@available(iOS 10.0, *)
class INWorkoutLocationTypeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedWorkoutLocationType: INWorkoutLocationType) -> Self
  class func confirmationRequired(with workoutLocationTypeToConfirm: INWorkoutLocationType) -> Self
}
