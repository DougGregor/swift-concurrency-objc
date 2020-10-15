
@available(watchOS 2.0, *)
@available(watchOS, deprecated: 6.0, message: "Use AVFoundation's AVPlayer and AVQueuePlayer instead")
enum WKAudioFilePlayerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case readyToPlay
  case failed
}
@available(watchOS 2.0, *)
@available(watchOS, deprecated: 6.0, message: "Use AVFoundation's AVPlayer and AVQueuePlayer instead")
class WKAudioFilePlayer : NSObject {
  convenience init(playerItem item: WKAudioFilePlayerItem)
  func play()
  func pause()
  func replaceCurrentItem(with item: WKAudioFilePlayerItem?)
  var currentItem: WKAudioFilePlayerItem? { get }
  var status: WKAudioFilePlayerStatus { get }
  var error: Error? { get }
  var rate: Float
  var currentTime: TimeInterval { get }
}
@available(watchOS 2.0, *)
@available(watchOS, deprecated: 6.0, message: "Use AVFoundation's AVPlayer and AVQueuePlayer instead")
class WKAudioFileQueuePlayer : WKAudioFilePlayer {
  convenience init(items: [WKAudioFilePlayerItem])
  func advanceToNextItem()
  func appendItem(_ item: WKAudioFilePlayerItem)
  func removeItem(_ item: WKAudioFilePlayerItem)
  func removeAllItems()
  var items: [WKAudioFilePlayerItem] { get }
}
