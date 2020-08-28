
@available(macOS 11.0, *)
enum INReservationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case canceled
  case pending
  case hold
  case confirmed
}
