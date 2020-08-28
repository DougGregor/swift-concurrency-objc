
@available(tvOS 10.3, *)
class INGetCarPowerLevelStatusIntent : INIntent {
  init(carName: INSpeakableString?)
  @NSCopying var carName: INSpeakableString? { get }
}
@available(tvOS 10.3, *)
protocol INGetCarPowerLevelStatusIntentHandling : NSObjectProtocol {
  func handle(intent: INGetCarPowerLevelStatusIntent, completion: @escaping (INGetCarPowerLevelStatusIntentResponse) -> Void)
  func handle(intent: INGetCarPowerLevelStatusIntent) async -> INGetCarPowerLevelStatusIntentResponse
  @available(tvOS 14.0, *)
  optional func startSendingUpdates(for intent: INGetCarPowerLevelStatusIntent, to observer: INGetCarPowerLevelStatusIntentResponseObserver)
  @available(tvOS 14.0, *)
  optional func stopSendingUpdates(for intent: INGetCarPowerLevelStatusIntent)
  optional func confirm(intent: INGetCarPowerLevelStatusIntent, completion: @escaping (INGetCarPowerLevelStatusIntentResponse) -> Void)
  optional func confirm(intent: INGetCarPowerLevelStatusIntent) async -> INGetCarPowerLevelStatusIntentResponse
  optional func resolveCarName(for intent: INGetCarPowerLevelStatusIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveCarName(for intent: INGetCarPowerLevelStatusIntent) async -> INSpeakableStringResolutionResult
}
@available(tvOS 14.0, *)
protocol INGetCarPowerLevelStatusIntentResponseObserver : NSObjectProtocol {
  func didUpdate(getCarPowerLevelStatus response: INGetCarPowerLevelStatusIntentResponse)
}
