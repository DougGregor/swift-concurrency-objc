
@available(iOS 10.0, *)
class INSetSeatSettingsInCarIntent : INIntent {
  @available(iOS 12.0, *)
  init(__enableHeating enableHeating: NSNumber?, enableCooling: NSNumber?, enableMassage: NSNumber?, seat: INCarSeat, level: NSNumber?, relativeLevel relativeLevelSetting: INRelativeSetting, carName: INSpeakableString?)
  @NSCopying var __enableHeating: NSNumber? { get }
  @NSCopying var __enableCooling: NSNumber? { get }
  @NSCopying var __enableMassage: NSNumber? { get }
  var seat: INCarSeat { get }
  @NSCopying var __level: NSNumber? { get }
  var relativeLevelSetting: INRelativeSetting { get }
  @available(iOS 12.0, *)
  @NSCopying var carName: INSpeakableString? { get }
}

@available(macOS 10.15, iOS 10.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INSetSeatSettingsInCarIntent {
  @available(iOS 12.0, *)
  @nonobjc convenience init(enableHeating: Bool? = nil, enableCooling: Bool? = nil, enableMassage: Bool? = nil, seat: INCarSeat = .unknown, level: Int? = nil, relativeLevel: INRelativeSetting = .unknown, carName: INSpeakableString? = nil)
  @available(iOS, obsoleted: 12.0)
  @nonobjc convenience init(enableHeating: Bool? = nil, enableCooling: Bool? = nil, enableMassage: Bool? = nil, seat: INCarSeat = .unknown, level: Int? = nil, relativeLevel: INRelativeSetting = .unknown)
  @nonobjc final var enableHeating: Bool? { get }
  @nonobjc final var enableCooling: Bool? { get }
  @nonobjc final var enableMassage: Bool? { get }
  @nonobjc final var level: Int? { get }
}
@available(iOS 10.0, *)
protocol INSetSeatSettingsInCarIntentHandling : NSObjectProtocol {
  func handle(intent: INSetSeatSettingsInCarIntent, completion: @escaping (INSetSeatSettingsInCarIntentResponse) -> Void)
  func handle(intent: INSetSeatSettingsInCarIntent) async -> INSetSeatSettingsInCarIntentResponse
  optional func confirm(intent: INSetSeatSettingsInCarIntent, completion: @escaping (INSetSeatSettingsInCarIntentResponse) -> Void)
  optional func confirm(intent: INSetSeatSettingsInCarIntent) async -> INSetSeatSettingsInCarIntentResponse
  optional func resolveEnableHeating(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveEnableCooling(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveEnableMassage(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveSeat(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INCarSeatResolutionResult) -> Void)
  optional func resolveLevel(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INIntegerResolutionResult) -> Void)
  optional func resolveRelativeLevelSetting(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INRelativeSettingResolutionResult) -> Void)
  @available(iOS 12.0, *)
  optional func resolveCarName(for intent: INSetSeatSettingsInCarIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
