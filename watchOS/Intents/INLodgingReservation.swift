
@available(watchOS 6.0, *)
class INLodgingReservation : INReservation, NSCopying, NSSecureCoding {
  @available(watchOS 7.0, *)
  init(__itemReference itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, url URL: URL?, lodgingBusinessLocation: CLPlacemark, reservationDuration: INDateComponentsRange, numberOfAdults: NSNumber?, numberOfChildren: NSNumber?)
  convenience init(__itemReference itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, lodgingBusinessLocation: CLPlacemark, reservationDuration: INDateComponentsRange, numberOfAdults: NSNumber?, numberOfChildren: NSNumber?)
  @NSCopying var lodgingBusinessLocation: CLPlacemark { get }
  @NSCopying var reservationDuration: INDateComponentsRange { get }
  @NSCopying var __numberOfAdults: NSNumber? { get }
  @NSCopying var __numberOfChildren: NSNumber? { get }
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INLodgingReservation {
  @nonobjc convenience init(itemReference: INSpeakableString, reservationNumber: String? = nil, bookingTime: Date? = nil, reservationStatus: INReservationStatus = .unknown, reservationHolderName: String? = nil, actions: [INReservationAction]? = nil, lodgingBusinessLocation: CLPlacemark, reservationDuration: INDateComponentsRange, numberOfAdults: Int? = nil, numberOfChildren: Int? = nil)
  @available(macOS 11.0, iOS 14.0, watchOS 7.0, *)
  @nonobjc convenience init(itemReference: INSpeakableString, reservationNumber: String? = nil, bookingTime: Date? = nil, reservationStatus: INReservationStatus = .unknown, reservationHolderName: String? = nil, actions: [INReservationAction]? = nil, url: URL? = nil, lodgingBusinessLocation: CLPlacemark, reservationDuration: INDateComponentsRange, numberOfAdults: Int? = nil, numberOfChildren: Int? = nil)
  @nonobjc final var numberOfAdults: Int? { get }
  @nonobjc final var numberOfChildren: Int? { get }
}
