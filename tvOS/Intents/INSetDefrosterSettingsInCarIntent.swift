
@available(tvOS 10.0, *)
class INSetDefrosterSettingsInCarIntent : INIntent {
  @available(tvOS 12.0, *)
  init(__enable enable: NSNumber?, defroster: INCarDefroster, carName: INSpeakableString?)
  @NSCopying var __enable: NSNumber? { get }
  var defroster: INCarDefroster { get }
  @available(tvOS 12.0, *)
  @NSCopying var carName: INSpeakableString? { get }
}
@available(tvOS 10.0, *)
protocol INSetDefrosterSettingsInCarIntentHandling : NSObjectProtocol {
  func handle(intent: INSetDefrosterSettingsInCarIntent, completion: @escaping (INSetDefrosterSettingsInCarIntentResponse) -> Void)
  func handle(intent: INSetDefrosterSettingsInCarIntent) async -> INSetDefrosterSettingsInCarIntentResponse
  optional func confirm(intent: INSetDefrosterSettingsInCarIntent, completion: @escaping (INSetDefrosterSettingsInCarIntentResponse) -> Void)
  optional func confirm(intent: INSetDefrosterSettingsInCarIntent) async -> INSetDefrosterSettingsInCarIntentResponse
  optional func resolveEnable(for intent: INSetDefrosterSettingsInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveEnable(for intent: INSetDefrosterSettingsInCarIntent) async -> INBooleanResolutionResult
  optional func resolveDefroster(for intent: INSetDefrosterSettingsInCarIntent, with completion: @escaping (INCarDefrosterResolutionResult) -> Void)
  optional func resolveDefroster(for intent: INSetDefrosterSettingsInCarIntent) async -> INCarDefrosterResolutionResult
  @available(tvOS 12.0, *)
  optional func resolveCarName(for intent: INSetDefrosterSettingsInCarIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  @available(tvOS 12.0, *)
  optional func resolveCarName(for intent: INSetDefrosterSettingsInCarIntent) async -> INSpeakableStringResolutionResult
}
