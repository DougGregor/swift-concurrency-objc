
@available(tvOS 10.0, *)
class INRestaurantReservationBooking : NSObject, NSSecureCoding, NSCopying {
  init(restaurant: INRestaurant, booking bookingDate: Date, partySize: Int, bookingIdentifier: String)
  @NSCopying var restaurant: INRestaurant
  var bookingDescription: String?
  var bookingDate: Date
  var partySize: Int
  var bookingIdentifier: String
  var isBookingAvailable: Bool
  var offers: [INRestaurantOffer]?
  var requiresManualRequest: Bool
  var requiresEmailAddress: Bool
  var requiresName: Bool
  var requiresPhoneNumber: Bool
}
