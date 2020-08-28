
@available(watchOS 6.0, *)
class INRestaurantReservation : INReservation, NSCopying, NSSecureCoding {
  @available(watchOS 7.0, *)
  init(__itemReference itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, url URL: URL?, reservationDuration: INDateComponentsRange, partySize: NSNumber?, restaurantLocation: CLPlacemark)
  convenience init(__itemReference itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, reservationDuration: INDateComponentsRange, partySize: NSNumber?, restaurantLocation: CLPlacemark)
  @NSCopying var reservationDuration: INDateComponentsRange { get }
  @NSCopying var __partySize: NSNumber? { get }
  @NSCopying var restaurantLocation: CLPlacemark { get }
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INRestaurantReservation {
  @nonobjc convenience init(itemReference: INSpeakableString, reservationNumber: String? = nil, bookingTime: Date? = nil, reservationStatus: INReservationStatus = .unknown, reservationHolderName: String? = nil, actions: [INReservationAction]? = nil, reservationDuration: INDateComponentsRange, partySize: Int? = nil, restaurantLocation: CLPlacemark)
  @available(macOS 11.0, iOS 14.0, watchOS 7.0, *)
  @nonobjc convenience init(itemReference: INSpeakableString, reservationNumber: String? = nil, bookingTime: Date? = nil, reservationStatus: INReservationStatus = .unknown, reservationHolderName: String? = nil, actions: [INReservationAction]? = nil, url: URL? = nil, reservationDuration: INDateComponentsRange, partySize: Int? = nil, restaurantLocation: CLPlacemark)
  @nonobjc final var partySize: Int? { get }
}
