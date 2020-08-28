
enum INRestaurantReservationUserBookingStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case pending
  case confirmed
  case denied
}
@available(tvOS 10.0, *)
class INRestaurantReservationUserBooking : INRestaurantReservationBooking, NSCopying {
  init(restaurant: INRestaurant, booking bookingDate: Date, partySize: Int, bookingIdentifier: String, guest: INRestaurantGuest, status: INRestaurantReservationUserBookingStatus, dateStatusModified: Date)
  @NSCopying var guest: INRestaurantGuest
  var advisementText: String?
  @NSCopying var selectedOffer: INRestaurantOffer?
  var guestProvidedSpecialRequestText: String?
  var status: INRestaurantReservationUserBookingStatus
  var dateStatusModified: Date
}
