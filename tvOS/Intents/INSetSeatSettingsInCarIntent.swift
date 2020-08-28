
@available(tvOS 10.0, *)
class INSetSeatSettingsInCarIntent : INIntent {
  @available(tvOS 12.0, *)
  init(__enableHeating enableHeating: NSNumber?, enableCooling: NSNumber?, enableMassage: NSNumber?, seat: INCarSeat, level: NSNumber?, relativeLevel relativeLevelSetting: INRelativeSetting, carName: INSpeakableString?)
  @NSCopying var __enableHeating: NSNumber? { get }
  @NSCopying var __enableCooling: NSNumber? { get }
  @NSCopying var __enableMassage: NSNumber? { get }
  var seat: INCarSeat { get }
  @NSCopying var __level: NSNumber? { get }
  var relativeLevelSetting: INRelativeSetting { get }
  @available(tvOS 12.0, *)
  @NSCopying var carName: INSpeakableString? { get }
}
@available(tvOS 10.0, *)
protocol INSetSeatSettingsInCarIntentHandling : NSObjectProtocol {
  func handle(intent: INSetSeatSettingsInCarIntent, completion: @escaping (INSetSeatSettingsInCarIntentResponse) -> Void)
  optional func confirm(intent: INSetSeatSettingsInCarIntent, completion: @escaping (INSetSeatSettingsInCarIntentResponse) -> Void)
  optional func resolveEnableHeating(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveEnableCooling(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveEnableMassage(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveSeat(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INCarSeatResolutionResult) -> Void)
  optional func resolveLevel(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INIntegerResolutionResult) -> Void)
  optional func resolveRelativeLevelSetting(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INRelativeSettingResolutionResult) -> Void)
  @available(tvOS 12.0, *)
  optional func resolveCarName(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
