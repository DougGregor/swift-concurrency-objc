
@available(watchOS 4.0, *)
enum INSpatialEvent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case arrive
  case depart
}
