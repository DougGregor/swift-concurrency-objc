
@available(macOS 10.7, *)
class AVPlayerItemTrack : NSObject {
  var assetTrack: AVAssetTrack? { get }
  var isEnabled: Bool
  @available(macOS 10.9, *)
  var currentVideoFrameRate: Float { get }
  @available(macOS 10.10, *)
  var videoFieldMode: String?
}
@available(macOS 10.10, *)
let AVPlayerItemTrackVideoFieldModeDeinterlaceFields: String
