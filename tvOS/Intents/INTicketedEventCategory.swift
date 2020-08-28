
@available(tvOS 13.0, *)
enum INTicketedEventCategory : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case movie
}
