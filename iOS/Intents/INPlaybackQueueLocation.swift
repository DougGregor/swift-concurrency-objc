
@available(iOS 13.0, *)
enum INPlaybackQueueLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case now
  case next
  case later
}
