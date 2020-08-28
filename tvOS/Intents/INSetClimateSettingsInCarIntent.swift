
@available(tvOS 10.0, *)
class INSetClimateSettingsInCarIntent : INIntent {
  @available(tvOS 12.0, *)
  init(__enableFan enableFan: NSNumber?, enableAirConditioner: NSNumber?, enableClimateControl: NSNumber?, enableAutoMode: NSNumber?, airCirculationMode: INCarAirCirculationMode, fanSpeedIndex: NSNumber?, fanSpeedPercentage: NSNumber?, relativeFanSpeedSetting: INRelativeSetting, temperature: Measurement<UnitTemperature>?, relativeTemperatureSetting: INRelativeSetting, climateZone: INCarSeat, carName: INSpeakableString?)
  @NSCopying var __enableFan: NSNumber? { get }
  @NSCopying var __enableAirConditioner: NSNumber? { get }
  @NSCopying var __enableClimateControl: NSNumber? { get }
  @NSCopying var __enableAutoMode: NSNumber? { get }
  var airCirculationMode: INCarAirCirculationMode { get }
  @NSCopying var __fanSpeedIndex: NSNumber? { get }
  @NSCopying var __fanSpeedPercentage: NSNumber? { get }
  var relativeFanSpeedSetting: INRelativeSetting { get }
  var temperature: Measurement<UnitTemperature>? { get }
  var relativeTemperatureSetting: INRelativeSetting { get }
  var climateZone: INCarSeat { get }
  @available(tvOS 12.0, *)
  @NSCopying var carName: INSpeakableString? { get }
}
@available(tvOS 10.0, *)
protocol INSetClimateSettingsInCarIntentHandling : NSObjectProtocol {
  func handle(intent: INSetClimateSettingsInCarIntent, completion: @escaping (INSetClimateSettingsInCarIntentResponse) -> Void)
  func handle(intent: INSetClimateSettingsInCarIntent) async -> INSetClimateSettingsInCarIntentResponse
  optional func confirm(intent: INSetClimateSettingsInCarIntent, completion: @escaping (INSetClimateSettingsInCarIntentResponse) -> Void)
  optional func confirm(intent: INSetClimateSettingsInCarIntent) async -> INSetClimateSettingsInCarIntentResponse
  optional func resolveEnableFan(for intent: INSetClimateSettingsInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveEnableAirConditioner(for intent: INSetClimateSettingsInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveEnableClimateControl(for intent: INSetClimateSettingsInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveEnableAutoMode(for intent: INSetClimateSettingsInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveAirCirculationMode(for intent: INSetClimateSettingsInCarIntent, with completion: @escaping (INCarAirCirculationModeResolutionResult) -> Void)
  optional func resolveFanSpeedIndex(for intent: INSetClimateSettingsInCarIntent, with completion: @escaping (INIntegerResolutionResult) -> Void)
  optional func resolveFanSpeedPercentage(for intent: INSetClimateSettingsInCarIntent, with completion: @escaping (INDoubleResolutionResult) -> Void)
  optional func resolveRelativeFanSpeedSetting(for intent: INSetClimateSettingsInCarIntent, with completion: @escaping (INRelativeSettingResolutionResult) -> Void)
  optional func resolveTemperature(for intent: INSetClimateSettingsInCarIntent, with completion: @escaping (INTemperatureResolutionResult) -> Void)
  optional func resolveRelativeTemperatureSetting(for intent: INSetClimateSettingsInCarIntent, with completion: @escaping (INRelativeSettingResolutionResult) -> Void)
  optional func resolveClimateZone(for intent: INSetClimateSettingsInCarIntent, with completion: @escaping (INCarSeatResolutionResult) -> Void)
  @available(tvOS 12.0, *)
  optional func resolveCarName(for intent: INSetClimateSettingsInCarIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
