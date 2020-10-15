
@available(iOS 10.0, *)
enum INRelativeSetting : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case lowest
  case lower
  case higher
  case highest
}
