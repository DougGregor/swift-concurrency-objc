
@available(iOS 10.0, *)
class INRequestRideIntent : INIntent {
  @available(iOS 10.3, *)
  init(__pickupLocation pickupLocation: CLPlacemark?, dropOffLocation: CLPlacemark?, rideOptionName: INSpeakableString?, partySize: NSNumber?, paymentMethod: INPaymentMethod?, scheduledPickupTime: INDateComponentsRange?)
  @NSCopying var pickupLocation: CLPlacemark? { get }
  @NSCopying var dropOffLocation: CLPlacemark? { get }
  @NSCopying var rideOptionName: INSpeakableString? { get }
  @NSCopying var __partySize: NSNumber? { get }
  @NSCopying var paymentMethod: INPaymentMethod? { get }
  @available(iOS 10.3, *)
  @NSCopying var scheduledPickupTime: INDateComponentsRange? { get }
}

@available(macOS 10.15, iOS 10.0, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INRequestRideIntent {
  @nonobjc convenience init(pickupLocation: CLPlacemark? = nil, dropOffLocation: CLPlacemark? = nil, rideOptionName: INSpeakableString? = nil, partySize: Int? = nil, paymentMethod: INPaymentMethod? = nil, scheduledPickupTime: INDateComponentsRange? = nil)
  @nonobjc final var partySize: Int? { get }
}
@available(iOS 10.0, *)
protocol INRequestRideIntentHandling : NSObjectProtocol {
  func handle(intent: INRequestRideIntent, completion: @escaping (INRequestRideIntentResponse) -> Void)
  optional func confirm(intent: INRequestRideIntent, completion: @escaping (INRequestRideIntentResponse) -> Void)
  optional func resolvePickupLocation(for intent: INRequestRideIntent, with completion: @escaping (INPlacemarkResolutionResult) -> Void)
  optional func resolveDropOffLocation(for intent: INRequestRideIntent, with completion: @escaping (INPlacemarkResolutionResult) -> Void)
  optional func resolveRideOptionName(for intent: INRequestRideIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolvePartySize(for intent: INRequestRideIntent, with completion: @escaping (INIntegerResolutionResult) -> Void)
  @available(iOS 10.3, *)
  optional func resolveScheduledPickupTime(for intent: INRequestRideIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
}
