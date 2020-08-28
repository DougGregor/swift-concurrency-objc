
@available(iOS 10.0, *)
class INGetRideStatusIntent : INIntent {
}
@available(iOS 10.0, *)
protocol INGetRideStatusIntentHandling : NSObjectProtocol {
  func handle(intent: INGetRideStatusIntent, completion: @escaping (INGetRideStatusIntentResponse) -> Void)
  func handle(intent: INGetRideStatusIntent) async -> INGetRideStatusIntentResponse
  func startSendingUpdates(for intent: INGetRideStatusIntent, to observer: INGetRideStatusIntentResponseObserver)
  func stopSendingUpdates(for intent: INGetRideStatusIntent)
  optional func confirm(intent: INGetRideStatusIntent, completion: @escaping (INGetRideStatusIntentResponse) -> Void)
  optional func confirm(intent: INGetRideStatusIntent) async -> INGetRideStatusIntentResponse
}
@available(iOS 10.0, *)
protocol INGetRideStatusIntentResponseObserver : NSObjectProtocol {
  func didUpdate(getRideStatus response: INGetRideStatusIntentResponse)
}
