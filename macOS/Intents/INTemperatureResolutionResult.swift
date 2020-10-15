
@available(macOS 11.0, *)
class INTemperatureResolutionResult : INIntentResolutionResult {
  class func success(with resolvedTemperature: Measurement<UnitTemperature>) -> Self
  class func disambiguation(with temperaturesToDisambiguate: [Measurement<UnitTemperature>]) -> Self
  class func confirmationRequired(with temperatureToConfirm: Measurement<UnitTemperature>?) -> Self
}
