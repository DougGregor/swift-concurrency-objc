
enum INRestaurantReservationUserBookingStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case pending
  case confirmed
  case denied
}
