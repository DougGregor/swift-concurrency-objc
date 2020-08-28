
@available(macOS 11.0, *)
class INReservation : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var itemReference: INSpeakableString { get }
  var reservationNumber: String? { get }
  var bookingTime: Date? { get }
  var reservationStatus: INReservationStatus { get }
  var reservationHolderName: String? { get }
  var actions: [INReservationAction]? { get }
  @available(macOS, introduced: 11.0, deprecated: 11.0, message: "Use URL instead")
  var url: URL? { get }
  var url: URL? { get }
}
