
@available(iOS 13.0, *)
enum INMediaDestinationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case library
  case playlist
}
