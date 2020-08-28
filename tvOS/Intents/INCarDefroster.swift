
@available(tvOS 10.0, *)
enum INCarDefroster : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case front
  case rear
  case all
}
