
@available(macOS 10.12, macOS 10.12, *)
enum PHLivePhotoViewPlaybackStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.12, *)
  case undefined
  @available(macOS 10.12, *)
  case full
  @available(macOS 10.12, *)
  case hint
}
@available(macOS 10.12, macOS 10.12, *)
enum PHLivePhotoViewContentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.12, *)
  case aspectFit
  @available(macOS 10.12, *)
  case aspectFill
}
@available(macOS 10.12, *)
class PHLivePhotoView : NSView {
  @available(macOS 10.12, *)
  weak var delegate: @sil_weak PHLivePhotoViewDelegate?
  @available(macOS 10.12, *)
  var livePhoto: PHLivePhoto?
  @available(macOS 10.12, *)
  var contentMode: PHLivePhotoViewContentMode
  @available(macOS 10.12, *)
  var audioVolume: Float
  @available(macOS 10.12, *)
  var isMuted: Bool
  @available(macOS 10.12, *)
  func startPlayback(with playbackStyle: PHLivePhotoViewPlaybackStyle)
  @available(macOS 10.12, *)
  func stopPlayback()
  @available(macOS 10.12, *)
  func stopPlayback(animated: Bool)
  @available(macOS 10.12, *)
  var livePhotoBadgeView: NSView? { get }
}
@available(macOS 10.12, *)
protocol PHLivePhotoViewDelegate : NSObjectProtocol {
  @available(macOS 10.12, *)
  optional func livePhotoView(_ livePhotoView: PHLivePhotoView, willBeginPlaybackWith playbackStyle: PHLivePhotoViewPlaybackStyle)
  @available(macOS 10.12, *)
  @asyncHandler optional func livePhotoView(_ livePhotoView: PHLivePhotoView, didEndPlaybackWith playbackStyle: PHLivePhotoViewPlaybackStyle)
}
