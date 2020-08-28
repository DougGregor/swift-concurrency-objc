
@available(tvOS 10.0, *)
class INGetAvailableRestaurantReservationBookingsIntent : INIntent, NSCopying {
  @available(tvOS 11.0, *)
  init(restaurant: INRestaurant, partySize: Int, preferredBooking preferredBookingDateComponents: DateComponents?, maximumNumberOfResults: NSNumber?, earliestBookingDateForResults: Date?, latestBookingDateForResults: Date?)
  @NSCopying var restaurant: INRestaurant
  var partySize: Int
  var preferredBookingDateComponents: DateComponents?
  @NSCopying var maximumNumberOfResults: NSNumber?
  var earliestBookingDateForResults: Date?
  var latestBookingDateForResults: Date?
}
@available(tvOS 10.0, *)
protocol INGetAvailableRestaurantReservationBookingsIntentHandling : NSObjectProtocol {
  func handle(getAvailableRestaurantReservationBookings intent: INGetAvailableRestaurantReservationBookingsIntent, completion: @escaping (INGetAvailableRestaurantReservationBookingsIntentResponse) -> Void)
  func handle(getAvailableRestaurantReservationBookings intent: INGetAvailableRestaurantReservationBookingsIntent) async -> INGetAvailableRestaurantReservationBookingsIntentResponse
  optional func confirm(getAvailableRestaurantReservationBookings intent: INGetAvailableRestaurantReservationBookingsIntent, completion: @escaping (INGetAvailableRestaurantReservationBookingsIntentResponse) -> Void)
  optional func confirm(getAvailableRestaurantReservationBookings intent: INGetAvailableRestaurantReservationBookingsIntent) async -> INGetAvailableRestaurantReservationBookingsIntentResponse
  optional func resolveRestaurant(for intent: INGetAvailableRestaurantReservationBookingsIntent, completion: @escaping (INRestaurantResolutionResult) -> Void)
  optional func resolveRestaurant(for intent: INGetAvailableRestaurantReservationBookingsIntent) async -> INRestaurantResolutionResult
  optional func resolvePartySize(for intent: INGetAvailableRestaurantReservationBookingsIntent, completion: @escaping (INIntegerResolutionResult) -> Void)
  optional func resolvePartySize(for intent: INGetAvailableRestaurantReservationBookingsIntent) async -> INIntegerResolutionResult
  optional func resolvePreferredBookingDateComponents(for intent: INGetAvailableRestaurantReservationBookingsIntent, completion: @escaping (INDateComponentsResolutionResult) -> Void)
  optional func resolvePreferredBookingDateComponents(for intent: INGetAvailableRestaurantReservationBookingsIntent) async -> INDateComponentsResolutionResult
}
