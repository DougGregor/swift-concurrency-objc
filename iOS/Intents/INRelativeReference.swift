
@available(iOS 10.0, *)
enum INRelativeReference : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case next
  case previous
}
