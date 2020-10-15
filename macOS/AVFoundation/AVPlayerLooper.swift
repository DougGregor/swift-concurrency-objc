
extension AVPlayerLooper {
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case ready
    case failed
    case cancelled
  }
}
@available(macOS 10.12, *)
class AVPlayerLooper : NSObject {
  convenience init(player: AVQueuePlayer, templateItem itemToLoop: AVPlayerItem)
  init(player: AVQueuePlayer, templateItem itemToLoop: AVPlayerItem, timeRange loopRange: CMTimeRange)
  var status: AVPlayerLooper.Status { get }
  var error: Error? { get }
  func disableLooping()
  var loopCount: Int { get }
  var loopingPlayerItems: [AVPlayerItem] { get }
}
