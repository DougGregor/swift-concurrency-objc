
@available(iOS 13.0, *)
class INReservation : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var itemReference: INSpeakableString { get }
  var reservationNumber: String? { get }
  var bookingTime: Date? { get }
  var reservationStatus: INReservationStatus { get }
  var reservationHolderName: String? { get }
  var actions: [INReservationAction]? { get }
  @available(iOS, introduced: 14.0, deprecated: 14.0, message: "Use URL instead")
  var url: URL? { get }
  @available(iOS 14.0, *)
  var url: URL? { get }
}
