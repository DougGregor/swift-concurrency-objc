
@available(iOS 13.0, *)
class INTicketedEventReservation : INReservation, NSCopying, NSSecureCoding {
  @available(iOS 14.0, *)
  init(itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, url URL: URL?, reservedSeat: INSeat?, event: INTicketedEvent)
  convenience init(itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, reservedSeat: INSeat?, event: INTicketedEvent)
  @NSCopying var event: INTicketedEvent { get }
  @NSCopying var reservedSeat: INSeat? { get }
}
