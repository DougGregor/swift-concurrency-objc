
@available(tvOS 10.0, *)
class INGetRideStatusIntent : INIntent {
}
@available(tvOS 10.0, *)
protocol INGetRideStatusIntentHandling : NSObjectProtocol {
  func handle(intent: INGetRideStatusIntent, completion: @escaping (INGetRideStatusIntentResponse) -> Void)
  func startSendingUpdates(for intent: INGetRideStatusIntent, to observer: INGetRideStatusIntentResponseObserver)
  func stopSendingUpdates(for intent: INGetRideStatusIntent)
  optional func confirm(intent: INGetRideStatusIntent, completion: @escaping (INGetRideStatusIntentResponse) -> Void)
}
@available(tvOS 10.0, *)
protocol INGetRideStatusIntentResponseObserver : NSObjectProtocol {
  func didUpdate(getRideStatus response: INGetRideStatusIntentResponse)
}
