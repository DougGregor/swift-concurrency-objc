
@available(tvOS 10.0, *)
class INGetUserCurrentRestaurantReservationBookingsIntent : INIntent, NSCopying {
  @available(tvOS 11.0, *)
  init(restaurant: INRestaurant?, reservationIdentifier: String?, maximumNumberOfResults: NSNumber?, earliestBookingDateForResults: Date?)
  @NSCopying var restaurant: INRestaurant?
  var reservationIdentifier: String?
  @NSCopying var maximumNumberOfResults: NSNumber?
  var earliestBookingDateForResults: Date?
}
@available(tvOS 10.0, *)
protocol INGetUserCurrentRestaurantReservationBookingsIntentHandling : NSObjectProtocol {
  func handle(getUserCurrentRestaurantReservationBookings intent: INGetUserCurrentRestaurantReservationBookingsIntent, completion: @escaping (INGetUserCurrentRestaurantReservationBookingsIntentResponse) -> Void)
  optional func confirm(getUserCurrentRestaurantReservationBookings intent: INGetUserCurrentRestaurantReservationBookingsIntent, completion: @escaping (INGetUserCurrentRestaurantReservationBookingsIntentResponse) -> Void)
  optional func resolveRestaurant(for intent: INGetUserCurrentRestaurantReservationBookingsIntent, completion: @escaping (INRestaurantResolutionResult) -> Void)
}
