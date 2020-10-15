
enum INGetAvailableRestaurantReservationBookingsIntentCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case failure
  case failureRequestUnsatisfiable
  case failureRequestUnspecified
}
