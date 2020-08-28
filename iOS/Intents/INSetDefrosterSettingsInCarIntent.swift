
@available(iOS 10.0, *)
class INSetDefrosterSettingsInCarIntent : INIntent {
  @available(iOS 12.0, *)
  init(__enable enable: NSNumber?, defroster: INCarDefroster, carName: INSpeakableString?)
  @NSCopying var __enable: NSNumber? { get }
  var defroster: INCarDefroster { get }
  @available(iOS 12.0, *)
  @NSCopying var carName: INSpeakableString? { get }
}

@available(macOS 10.15, iOS 10.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INSetDefrosterSettingsInCarIntent {
  @available(iOS 12.0, *)
  @nonobjc convenience init(enable: Bool? = nil, defroster: INCarDefroster = .unknown, carName: INSpeakableString? = nil)
  @available(iOS, obsoleted: 12.0)
  @nonobjc convenience init(enable: Bool? = nil, defroster: INCarDefroster = .unknown)
  @nonobjc final var enable: Bool? { get }
}
@available(iOS 10.0, *)
protocol INSetDefrosterSettingsInCarIntentHandling : NSObjectProtocol {
  func handle(intent: INSetDefrosterSettingsInCarIntent, completion: @escaping (INSetDefrosterSettingsInCarIntentResponse) -> Void)
  func handle(intent: INSetDefrosterSettingsInCarIntent) async -> INSetDefrosterSettingsInCarIntentResponse
  optional func confirm(intent: INSetDefrosterSettingsInCarIntent, completion: @escaping (INSetDefrosterSettingsInCarIntentResponse) -> Void)
  optional func confirm(intent: INSetDefrosterSettingsInCarIntent) async -> INSetDefrosterSettingsInCarIntentResponse
  optional func resolveEnable(for intent: INSetDefrosterSettingsInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveDefroster(for intent: INSetDefrosterSettingsInCarIntent, with completion: @escaping (INCarDefrosterResolutionResult) -> Void)
  @available(iOS 12.0, *)
  optional func resolveCarName(for intent: INSetDefrosterSettingsInCarIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
