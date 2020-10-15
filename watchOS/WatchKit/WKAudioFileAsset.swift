
@available(watchOS 2.0, *)
@available(watchOS, deprecated: 6.0, message: "Use AVFoundation's AVPlayer and AVQueuePlayer instead")
class WKAudioFileAsset : NSObject {
  convenience init(url URL: URL)
  convenience init(url URL: URL, title: String?, albumTitle: String?, artist: String?)
  var url: URL { get }
  var duration: TimeInterval { get }
  var title: String? { get }
  var albumTitle: String? { get }
  var artist: String? { get }
}
