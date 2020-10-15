
@available(watchOS 6.0, *)
class INReservation : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var itemReference: INSpeakableString { get }
  var reservationNumber: String? { get }
  var bookingTime: Date? { get }
  var reservationStatus: INReservationStatus { get }
  var reservationHolderName: String? { get }
  var actions: [INReservationAction]? { get }
  @available(watchOS, introduced: 7.0, deprecated: 7.0, message: "Use URL instead")
  var url: URL? { get }
  @available(watchOS 7.0, *)
  var url: URL? { get }
}
