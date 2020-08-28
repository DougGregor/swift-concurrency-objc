
@available(iOS 13.0, *)
class INSeat : NSObject, NSCopying, NSSecureCoding {
  init(seatSection: String?, seatRow: String?, seatNumber: String?, seatingType: String?)
  var seatSection: String? { get }
  var seatRow: String? { get }
  var seatNumber: String? { get }
  var seatingType: String? { get }
}
