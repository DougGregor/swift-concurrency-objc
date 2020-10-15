
@available(iOS 10.0, *)
class INCarAirCirculationModeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedCarAirCirculationMode: INCarAirCirculationMode) -> Self
  class func confirmationRequired(with carAirCirculationModeToConfirm: INCarAirCirculationMode) -> Self
}
