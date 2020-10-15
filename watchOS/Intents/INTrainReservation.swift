
@available(watchOS 6.0, *)
class INTrainReservation : INReservation, NSCopying, NSSecureCoding {
  @available(watchOS 7.0, *)
  init(itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, url URL: URL?, reservedSeat: INSeat?, trainTrip: INTrainTrip)
  convenience init(itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, reservedSeat: INSeat?, trainTrip: INTrainTrip)
  @NSCopying var reservedSeat: INSeat? { get }
  @NSCopying var trainTrip: INTrainTrip { get }
}
