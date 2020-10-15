
@available(tvOS 9.0, *)
class AVPlayerItemTrack : NSObject {
  var assetTrack: AVAssetTrack? { get }
  var isEnabled: Bool
  @available(tvOS 9.0, *)
  var currentVideoFrameRate: Float { get }
}
