
@available(watchOS 3.2, *)
class INListRideOptionsIntent : INIntent {
  init(pickupLocation: CLPlacemark?, dropOffLocation: CLPlacemark?)
  @NSCopying var pickupLocation: CLPlacemark? { get }
  @NSCopying var dropOffLocation: CLPlacemark? { get }
}
@available(watchOS 3.2, *)
protocol INListRideOptionsIntentHandling : NSObjectProtocol {
  func handle(intent: INListRideOptionsIntent, completion: @escaping (INListRideOptionsIntentResponse) -> Void)
  func handle(intent: INListRideOptionsIntent) async -> INListRideOptionsIntentResponse
  optional func confirm(intent: INListRideOptionsIntent, completion: @escaping (INListRideOptionsIntentResponse) -> Void)
  optional func confirm(intent: INListRideOptionsIntent) async -> INListRideOptionsIntentResponse
  optional func resolvePickupLocation(for intent: INListRideOptionsIntent, with completion: @escaping (INPlacemarkResolutionResult) -> Void)
  optional func resolvePickupLocation(for intent: INListRideOptionsIntent) async -> INPlacemarkResolutionResult
  optional func resolveDropOffLocation(for intent: INListRideOptionsIntent, with completion: @escaping (INPlacemarkResolutionResult) -> Void)
  optional func resolveDropOffLocation(for intent: INListRideOptionsIntent) async -> INPlacemarkResolutionResult
}
