
@available(watchOS 6.0, *)
class INTicketedEventReservation : INReservation, NSCopying, NSSecureCoding {
  @available(watchOS 7.0, *)
  init(itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, url URL: URL?, reservedSeat: INSeat?, event: INTicketedEvent)
  convenience init(itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, reservedSeat: INSeat?, event: INTicketedEvent)
  @NSCopying var event: INTicketedEvent { get }
  @NSCopying var reservedSeat: INSeat? { get }
}
