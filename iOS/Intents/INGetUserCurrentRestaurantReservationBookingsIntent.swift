
@available(iOS 10.0, *)
class INGetUserCurrentRestaurantReservationBookingsIntent : INIntent, NSCopying {
  @available(iOS 11.0, *)
  init(restaurant: INRestaurant?, reservationIdentifier: String?, maximumNumberOfResults: NSNumber?, earliestBookingDateForResults: Date?)
  @NSCopying var restaurant: INRestaurant?
  var reservationIdentifier: String?
  @NSCopying var maximumNumberOfResults: NSNumber?
  var earliestBookingDateForResults: Date?
}
@available(iOS 10.0, *)
protocol INGetUserCurrentRestaurantReservationBookingsIntentHandling : NSObjectProtocol {
  func handle(getUserCurrentRestaurantReservationBookings intent: INGetUserCurrentRestaurantReservationBookingsIntent, completion: @escaping (INGetUserCurrentRestaurantReservationBookingsIntentResponse) -> Void)
  func handle(getUserCurrentRestaurantReservationBookings intent: INGetUserCurrentRestaurantReservationBookingsIntent) async -> INGetUserCurrentRestaurantReservationBookingsIntentResponse
  optional func confirm(getUserCurrentRestaurantReservationBookings intent: INGetUserCurrentRestaurantReservationBookingsIntent, completion: @escaping (INGetUserCurrentRestaurantReservationBookingsIntentResponse) -> Void)
  optional func confirm(getUserCurrentRestaurantReservationBookings intent: INGetUserCurrentRestaurantReservationBookingsIntent) async -> INGetUserCurrentRestaurantReservationBookingsIntentResponse
  optional func resolveRestaurant(for intent: INGetUserCurrentRestaurantReservationBookingsIntent, completion: @escaping (INRestaurantResolutionResult) -> Void)
  optional func resolveRestaurant(for intent: INGetUserCurrentRestaurantReservationBookingsIntent) async -> INRestaurantResolutionResult
}
