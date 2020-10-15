
@available(iOS 10.3, *)
class INGetCarLockStatusIntent : INIntent {
  init(carName: INSpeakableString?)
  @NSCopying var carName: INSpeakableString? { get }
}
@available(iOS 10.3, *)
protocol INGetCarLockStatusIntentHandling : NSObjectProtocol {
  func handle(intent: INGetCarLockStatusIntent, completion: @escaping (INGetCarLockStatusIntentResponse) -> Void)
  func handle(intent: INGetCarLockStatusIntent) async -> INGetCarLockStatusIntentResponse
  optional func confirm(intent: INGetCarLockStatusIntent, completion: @escaping (INGetCarLockStatusIntentResponse) -> Void)
  optional func confirm(intent: INGetCarLockStatusIntent) async -> INGetCarLockStatusIntentResponse
  optional func resolveCarName(for intent: INGetCarLockStatusIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveCarName(for intent: INGetCarLockStatusIntent) async -> INSpeakableStringResolutionResult
}
