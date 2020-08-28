
@available(tvOS 13.0, *)
class INRestaurantReservation : INReservation, NSCopying, NSSecureCoding {
  @available(tvOS 14.0, *)
  init(__itemReference itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, url URL: URL?, reservationDuration: INDateComponentsRange, partySize: NSNumber?, restaurantLocation: CLPlacemark)
  convenience init(__itemReference itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, reservationDuration: INDateComponentsRange, partySize: NSNumber?, restaurantLocation: CLPlacemark)
  @NSCopying var reservationDuration: INDateComponentsRange { get }
  @NSCopying var __partySize: NSNumber? { get }
  @NSCopying var restaurantLocation: CLPlacemark { get }
}
