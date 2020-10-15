
@available(watchOS 6.0, *)
enum INMediaDestinationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case library
  case playlist
}
