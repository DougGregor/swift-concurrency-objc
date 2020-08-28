
@available(macOS 11.0, *)
class INRestaurantReservation : INReservation, NSCopying, NSSecureCoding {
  init(__itemReference itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, url URL: URL?, reservationDuration: INDateComponentsRange, partySize: NSNumber?, restaurantLocation: CLPlacemark)
  convenience init(__itemReference itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, reservationDuration: INDateComponentsRange, partySize: NSNumber?, restaurantLocation: CLPlacemark)
  @NSCopying var reservationDuration: INDateComponentsRange { get }
  @NSCopying var __partySize: NSNumber? { get }
  @NSCopying var restaurantLocation: CLPlacemark { get }
}
