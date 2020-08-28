
@available(tvOS 10.0, *)
class INSaveProfileInCarIntent : INIntent {
  @available(tvOS 10.2, *)
  init(__profileNumber profileNumber: NSNumber?, profileName: String?)
  @NSCopying var __profileNumber: NSNumber? { get }
  @available(tvOS 10.2, *)
  var profileName: String? { get }
}
@available(tvOS 10.0, *)
protocol INSaveProfileInCarIntentHandling : NSObjectProtocol {
  func handle(intent: INSaveProfileInCarIntent, completion: @escaping (INSaveProfileInCarIntentResponse) -> Void)
  func handle(intent: INSaveProfileInCarIntent) async -> INSaveProfileInCarIntentResponse
  optional func confirm(intent: INSaveProfileInCarIntent, completion: @escaping (INSaveProfileInCarIntentResponse) -> Void)
  optional func confirm(intent: INSaveProfileInCarIntent) async -> INSaveProfileInCarIntentResponse
  optional func resolveProfileNumber(for intent: INSaveProfileInCarIntent, with completion: @escaping (INIntegerResolutionResult) -> Void)
  @available(tvOS 10.2, *)
  optional func resolveProfileName(for intent: INSaveProfileInCarIntent, with completion: @escaping (INStringResolutionResult) -> Void)
}
