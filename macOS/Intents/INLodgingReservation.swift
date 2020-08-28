
@available(macOS 11.0, *)
class INLodgingReservation : INReservation, NSCopying, NSSecureCoding {
  init(__itemReference itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, url URL: URL?, lodgingBusinessLocation: CLPlacemark, reservationDuration: INDateComponentsRange, numberOfAdults: NSNumber?, numberOfChildren: NSNumber?)
  convenience init(__itemReference itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, lodgingBusinessLocation: CLPlacemark, reservationDuration: INDateComponentsRange, numberOfAdults: NSNumber?, numberOfChildren: NSNumber?)
  @NSCopying var lodgingBusinessLocation: CLPlacemark { get }
  @NSCopying var reservationDuration: INDateComponentsRange { get }
  @NSCopying var __numberOfAdults: NSNumber? { get }
  @NSCopying var __numberOfChildren: NSNumber? { get }
}
