
@available(iOS 13.0, *)
enum INReservationActionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case checkIn
}
