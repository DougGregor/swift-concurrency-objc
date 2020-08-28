
enum INGetUserCurrentRestaurantReservationBookingsIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case failure
  case failureRequestUnsatisfiable
  case unspecified
}
@available(watchOS 3.0, *)
class INGetUserCurrentRestaurantReservationBookingsIntentResponse : INIntentResponse {
  init(userCurrentBookings: [INRestaurantReservationUserBooking], code: INGetUserCurrentRestaurantReservationBookingsIntentResponseCode, userActivity: NSUserActivity?)
  var code: INGetUserCurrentRestaurantReservationBookingsIntentResponseCode { get }
  var userCurrentBookings: [INRestaurantReservationUserBooking]
}
