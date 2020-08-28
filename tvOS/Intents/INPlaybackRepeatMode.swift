
@available(tvOS 14.0, *)
enum INPlaybackRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case none
  case all
  case one
}
