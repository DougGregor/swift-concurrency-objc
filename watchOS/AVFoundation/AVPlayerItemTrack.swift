
@available(watchOS 1.0, *)
class AVPlayerItemTrack : NSObject {
  var assetTrack: AVAssetTrack? { get }
  var isEnabled: Bool
  @available(watchOS 2.0, *)
  var currentVideoFrameRate: Float { get }
}
