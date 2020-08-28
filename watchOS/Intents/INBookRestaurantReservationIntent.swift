
@available(watchOS 3.0, *)
class INBookRestaurantReservationIntent : INIntent, NSCopying {
  @available(watchOS 4.0, *)
  init(restaurant: INRestaurant, booking bookingDateComponents: DateComponents, partySize: Int, bookingIdentifier: String?, guest: INRestaurantGuest?, selectedOffer: INRestaurantOffer?, guestProvidedSpecialRequestText: String?)
  @NSCopying var restaurant: INRestaurant
  var bookingDateComponents: DateComponents
  var partySize: Int
  var bookingIdentifier: String?
  @NSCopying var guest: INRestaurantGuest?
  @NSCopying var selectedOffer: INRestaurantOffer?
  var guestProvidedSpecialRequestText: String?
}
@available(watchOS 3.0, *)
protocol INBookRestaurantReservationIntentHandling : NSObjectProtocol {
  func handle(bookRestaurantReservation intent: INBookRestaurantReservationIntent, completion: @escaping (INBookRestaurantReservationIntentResponse) -> Void)
  func handle(bookRestaurantReservation intent: INBookRestaurantReservationIntent) async -> INBookRestaurantReservationIntentResponse
  optional func confirm(bookRestaurantReservation intent: INBookRestaurantReservationIntent, completion: @escaping (INBookRestaurantReservationIntentResponse) -> Void)
  optional func confirm(bookRestaurantReservation intent: INBookRestaurantReservationIntent) async -> INBookRestaurantReservationIntentResponse
  optional func resolveRestaurant(for intent: INBookRestaurantReservationIntent, completion: @escaping (INRestaurantResolutionResult) -> Void)
  optional func resolveRestaurant(for intent: INBookRestaurantReservationIntent) async -> INRestaurantResolutionResult
  optional func resolveBookingDateComponents(for intent: INBookRestaurantReservationIntent, completion: @escaping (INDateComponentsResolutionResult) -> Void)
  optional func resolveBookingDateComponents(for intent: INBookRestaurantReservationIntent) async -> INDateComponentsResolutionResult
  optional func resolvePartySize(for intent: INBookRestaurantReservationIntent, completion: @escaping (INIntegerResolutionResult) -> Void)
  optional func resolvePartySize(for intent: INBookRestaurantReservationIntent) async -> INIntegerResolutionResult
  optional func resolveGuest(for intent: INBookRestaurantReservationIntent, completion: @escaping (INRestaurantGuestResolutionResult) -> Void)
  optional func resolveGuest(for intent: INBookRestaurantReservationIntent) async -> INRestaurantGuestResolutionResult
  optional func resolveGuestProvidedSpecialRequestText(for intent: INBookRestaurantReservationIntent, completion: @escaping (INStringResolutionResult) -> Void)
  optional func resolveGuestProvidedSpecialRequestText(for intent: INBookRestaurantReservationIntent) async -> INStringResolutionResult
}
