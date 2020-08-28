
enum INGetAvailableRestaurantReservationBookingDefaultsIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case failure
  case unspecified
}
@available(iOS 10.0, *)
class INGetAvailableRestaurantReservationBookingDefaultsIntentResponse : INIntentResponse {
  var defaultPartySize: Int { get }
  var defaultBookingDate: Date { get }
  @NSCopying var maximumPartySize: NSNumber?
  @NSCopying var minimumPartySize: NSNumber?
  @NSCopying var providerImage: INImage
  init(defaultPartySize: Int, defaultBooking defaultBookingDate: Date, code: INGetAvailableRestaurantReservationBookingDefaultsIntentResponseCode, userActivity: NSUserActivity?)
  var code: INGetAvailableRestaurantReservationBookingDefaultsIntentResponseCode { get }
}
