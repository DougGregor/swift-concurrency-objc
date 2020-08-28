
enum INGetAvailableRestaurantReservationBookingsIntentCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case failure
  case failureRequestUnsatisfiable
  case failureRequestUnspecified
}
@available(watchOS 3.0, *)
class INGetAvailableRestaurantReservationBookingsIntentResponse : INIntentResponse {
  init(availableBookings: [INRestaurantReservationBooking], code: INGetAvailableRestaurantReservationBookingsIntentCode, userActivity: NSUserActivity?)
  var code: INGetAvailableRestaurantReservationBookingsIntentCode { get }
  var localizedRestaurantDescriptionText: String?
  var localizedBookingAdvisementText: String?
  @NSCopying var termsAndConditions: INTermsAndConditions?
  var availableBookings: [INRestaurantReservationBooking] { get }
}
