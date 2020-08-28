
@available(tvOS 14.0, *)
enum INMediaReference : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case currentlyPlaying
}
