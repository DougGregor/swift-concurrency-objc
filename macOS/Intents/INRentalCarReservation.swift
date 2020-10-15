
@available(macOS 11.0, *)
class INRentalCarReservation : INReservation, NSCopying, NSSecureCoding {
  init(itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, url URL: URL?, rentalCar: INRentalCar, rentalDuration: INDateComponentsRange, pickupLocation: CLPlacemark?, dropOffLocation: CLPlacemark?)
  convenience init(itemReference: INSpeakableString, reservationNumber: String?, bookingTime: Date?, reservationStatus: INReservationStatus, reservationHolderName: String?, actions: [INReservationAction]?, rentalCar: INRentalCar, rentalDuration: INDateComponentsRange, pickupLocation: CLPlacemark?, dropOffLocation: CLPlacemark?)
  @NSCopying var rentalCar: INRentalCar { get }
  @NSCopying var rentalDuration: INDateComponentsRange { get }
  @NSCopying var pickupLocation: CLPlacemark? { get }
  @NSCopying var dropOffLocation: CLPlacemark? { get }
}
