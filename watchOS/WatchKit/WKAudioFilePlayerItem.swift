
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 6.0, message: "Use AVFoundation's AVPlayer and AVQueuePlayer instead")
  static let WKAudioFilePlayerItemTimeJumped: NSNotification.Name
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 6.0, message: "Use AVFoundation's AVPlayer and AVQueuePlayer instead")
  static let WKAudioFilePlayerItemDidPlayToEndTime: NSNotification.Name
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 6.0, message: "Use AVFoundation's AVPlayer and AVQueuePlayer instead")
  static let WKAudioFilePlayerItemFailedToPlayToEndTime: NSNotification.Name
}
@available(watchOS 2.0, *)
@available(watchOS, deprecated: 6.0, message: "Use AVFoundation's AVPlayer and AVQueuePlayer instead")
enum WKAudioFilePlayerItemStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case readyToPlay
  case failed
}
@available(watchOS 2.0, *)
@available(watchOS, deprecated: 6.0, message: "Use AVFoundation's AVPlayer and AVQueuePlayer instead")
class WKAudioFilePlayerItem : NSObject {
  /*not inherited*/ init(asset: WKAudioFileAsset)
  var asset: WKAudioFileAsset { get }
  var status: WKAudioFilePlayerItemStatus { get }
  var error: Error? { get }
  var currentTime: TimeInterval { get }
  @available(watchOS 3.2, *)
  @available(watchOS, deprecated: 6.0, message: "Use AVFoundation's AVPlayer and AVQueuePlayer instead")
  func setCurrentTime(_ currentTime: TimeInterval)
}
