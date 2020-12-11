
@available(watchOS 3.2, *)
class INGetRideStatusIntent : INIntent {
}
@available(watchOS 3.2, *)
protocol INGetRideStatusIntentHandling : NSObjectProtocol {
  func handle(intent: INGetRideStatusIntent, completion: @escaping (INGetRideStatusIntentResponse) -> Void)
  func handle(intent: INGetRideStatusIntent) async -> INGetRideStatusIntentResponse
  func startSendingUpdates(for intent: INGetRideStatusIntent, to observer: INGetRideStatusIntentResponseObserver)
  func stopSendingUpdates(for intent: INGetRideStatusIntent)
  optional func confirm(intent: INGetRideStatusIntent, completion: @escaping (INGetRideStatusIntentResponse) -> Void)
  optional func confirm(intent: INGetRideStatusIntent) async -> INGetRideStatusIntentResponse
}
@available(watchOS 3.2, *)
protocol INGetRideStatusIntentResponseObserver : NSObjectProtocol {
  func didUpdate(getRideStatus response: INGetRideStatusIntentResponse)
}
