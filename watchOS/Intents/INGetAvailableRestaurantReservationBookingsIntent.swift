
@available(watchOS 3.0, *)
class INGetAvailableRestaurantReservationBookingsIntent : INIntent, NSCopying {
  @available(watchOS 4.0, *)
  init(restaurant: INRestaurant, partySize: Int, preferredBooking preferredBookingDateComponents: DateComponents?, maximumNumberOfResults: NSNumber?, earliestBookingDateForResults: Date?, latestBookingDateForResults: Date?)
  @NSCopying var restaurant: INRestaurant
  var partySize: Int
  var preferredBookingDateComponents: DateComponents?
  @NSCopying var maximumNumberOfResults: NSNumber?
  var earliestBookingDateForResults: Date?
  var latestBookingDateForResults: Date?
}
@available(watchOS 3.0, *)
protocol INGetAvailableRestaurantReservationBookingsIntentHandling : NSObjectProtocol {
  func handle(getAvailableRestaurantReservationBookings intent: INGetAvailableRestaurantReservationBookingsIntent, completion: @escaping (INGetAvailableRestaurantReservationBookingsIntentResponse) -> Void)
  optional func confirm(getAvailableRestaurantReservationBookings intent: INGetAvailableRestaurantReservationBookingsIntent, completion: @escaping (INGetAvailableRestaurantReservationBookingsIntentResponse) -> Void)
  optional func resolveRestaurant(for intent: INGetAvailableRestaurantReservationBookingsIntent, completion: @escaping (INRestaurantResolutionResult) -> Void)
  optional func resolvePartySize(for intent: INGetAvailableRestaurantReservationBookingsIntent, completion: @escaping (INIntegerResolutionResult) -> Void)
  optional func resolvePreferredBookingDateComponents(for intent: INGetAvailableRestaurantReservationBookingsIntent, completion: @escaping (INDateComponentsResolutionResult) -> Void)
}
