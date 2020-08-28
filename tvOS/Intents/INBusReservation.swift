
@available(tvOS 14.0, *)
class INBusReservation : INReservation, NSCopying, NSSecureCoding {
  init(itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, url URL: URL?, reservedSeat: INSeat?, busTrip: INBusTrip?)
  @NSCopying var reservedSeat: INSeat? { get }
  @NSCopying var busTrip: INBusTrip { get }
}
