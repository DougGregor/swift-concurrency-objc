
@available(tvOS 10.0, *)
class INRequestRideIntent : INIntent {
  @available(tvOS 10.3, *)
  init(__pickupLocation pickupLocation: CLPlacemark?, dropOffLocation: CLPlacemark?, rideOptionName: INSpeakableString?, partySize: NSNumber?, paymentMethod: INPaymentMethod?, scheduledPickupTime: INDateComponentsRange?)
  @NSCopying var pickupLocation: CLPlacemark? { get }
  @NSCopying var dropOffLocation: CLPlacemark? { get }
  @NSCopying var rideOptionName: INSpeakableString? { get }
  @NSCopying var __partySize: NSNumber? { get }
  @NSCopying var paymentMethod: INPaymentMethod? { get }
  @available(tvOS 10.3, *)
  @NSCopying var scheduledPickupTime: INDateComponentsRange? { get }
}
@available(tvOS 10.0, *)
protocol INRequestRideIntentHandling : NSObjectProtocol {
  func handle(intent: INRequestRideIntent, completion: @escaping (INRequestRideIntentResponse) -> Void)
  func handle(intent: INRequestRideIntent) async -> INRequestRideIntentResponse
  optional func confirm(intent: INRequestRideIntent, completion: @escaping (INRequestRideIntentResponse) -> Void)
  optional func confirm(intent: INRequestRideIntent) async -> INRequestRideIntentResponse
  optional func resolvePickupLocation(for intent: INRequestRideIntent, with completion: @escaping (INPlacemarkResolutionResult) -> Void)
  optional func resolveDropOffLocation(for intent: INRequestRideIntent, with completion: @escaping (INPlacemarkResolutionResult) -> Void)
  optional func resolveRideOptionName(for intent: INRequestRideIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolvePartySize(for intent: INRequestRideIntent, with completion: @escaping (INIntegerResolutionResult) -> Void)
  @available(tvOS 10.3, *)
  optional func resolveScheduledPickupTime(for intent: INRequestRideIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
}
