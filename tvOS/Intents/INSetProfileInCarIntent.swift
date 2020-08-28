
@available(tvOS 10.0, *)
class INSetProfileInCarIntent : INIntent {
  @available(tvOS 12.0, *)
  init(__profileNumber profileNumber: NSNumber?, profileName: String?, defaultProfile: NSNumber?, carName: INSpeakableString?)
  @NSCopying var __profileNumber: NSNumber? { get }
  @available(tvOS 10.2, *)
  var profileName: String? { get }
  @NSCopying var __defaultProfile: NSNumber? { get }
  @available(tvOS 12.0, *)
  @NSCopying var carName: INSpeakableString? { get }
}
@available(tvOS 10.0, *)
protocol INSetProfileInCarIntentHandling : NSObjectProtocol {
  func handle(intent: INSetProfileInCarIntent, completion: @escaping (INSetProfileInCarIntentResponse) -> Void)
  optional func confirm(intent: INSetProfileInCarIntent, completion: @escaping (INSetProfileInCarIntentResponse) -> Void)
  optional func resolveProfileNumber(for intent: INSetProfileInCarIntent, with completion: @escaping (INIntegerResolutionResult) -> Void)
  @available(tvOS 10.2, *)
  optional func resolveProfileName(for intent: INSetProfileInCarIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  @available(tvOS 12.0, *)
  optional func resolveCarName(for intent: INSetProfileInCarIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "The property doesn't need to be resolved")
  optional func resolveDefaultProfile(forSetProfileInCar intent: INSetProfileInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
}
