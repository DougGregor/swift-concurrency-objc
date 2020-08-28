
@available(macOS 11.0, *)
class INBoatReservation : INReservation, NSCopying, NSSecureCoding {
  init(itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, url URL: URL?, reservedSeat: INSeat?, boatTrip: INBoatTrip?)
  @NSCopying var reservedSeat: INSeat? { get }
  @NSCopying var boatTrip: INBoatTrip? { get }
}
