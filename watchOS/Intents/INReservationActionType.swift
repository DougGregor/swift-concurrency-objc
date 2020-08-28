
@available(watchOS 6.0, *)
enum INReservationActionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case checkIn
}
