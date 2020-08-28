
@available(macOS 11.0, *)
enum INTicketedEventCategory : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case movie
}
