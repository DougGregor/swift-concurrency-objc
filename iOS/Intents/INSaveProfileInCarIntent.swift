
@available(iOS 10.0, *)
class INSaveProfileInCarIntent : INIntent {
  @available(iOS 10.2, *)
  init(__profileNumber profileNumber: NSNumber?, profileName: String?)
  @NSCopying var __profileNumber: NSNumber? { get }
  @available(iOS 10.2, *)
  var profileName: String? { get }
}

@available(macOS 10.15, iOS 10.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INSaveProfileInCarIntent {
  @nonobjc convenience init(profileNumber: Int? = nil, profileLabel: String? = nil)
  @nonobjc final var profileNumber: Int? { get }
}
@available(iOS 10.0, *)
protocol INSaveProfileInCarIntentHandling : NSObjectProtocol {
  func handle(intent: INSaveProfileInCarIntent, completion: @escaping (INSaveProfileInCarIntentResponse) -> Void)
  func handle(intent: INSaveProfileInCarIntent) async -> INSaveProfileInCarIntentResponse
  optional func confirm(intent: INSaveProfileInCarIntent, completion: @escaping (INSaveProfileInCarIntentResponse) -> Void)
  optional func confirm(intent: INSaveProfileInCarIntent) async -> INSaveProfileInCarIntentResponse
  optional func resolveProfileNumber(for intent: INSaveProfileInCarIntent, with completion: @escaping (INIntegerResolutionResult) -> Void)
  optional func resolveProfileNumber(for intent: INSaveProfileInCarIntent) async -> INIntegerResolutionResult
  @available(iOS 10.2, *)
  optional func resolveProfileName(for intent: INSaveProfileInCarIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  @available(iOS 10.2, *)
  optional func resolveProfileName(for intent: INSaveProfileInCarIntent) async -> INStringResolutionResult
}
