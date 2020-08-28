
@available(watchOS 6.0, *)
enum INTicketedEventCategory : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case movie
}
