
@available(tvOS 10, tvOS 10, *)
struct PHLivePhotoBadgeOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(tvOS 10, *)
  static var overContent: PHLivePhotoBadgeOptions { get }
  @available(tvOS 10, *)
  static var liveOff: PHLivePhotoBadgeOptions { get }
}
@available(tvOS 10, tvOS 10, *)
enum PHLivePhotoViewPlaybackStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case undefined
  @available(tvOS 10, *)
  case full
  @available(tvOS 10, *)
  case hint
}
@available(tvOS 10, *)
class PHLivePhotoView : UIView {
  @available(tvOS 10, *)
  class func livePhotoBadgeImage(options badgeOptions: PHLivePhotoBadgeOptions = []) -> UIImage
  @available(tvOS 10, *)
  weak var delegate: @sil_weak PHLivePhotoViewDelegate?
  @available(tvOS 10, *)
  var livePhoto: PHLivePhoto?
  @available(tvOS 10, *)
  var isMuted: Bool
  @available(tvOS 10, *)
  var playbackGestureRecognizer: UIGestureRecognizer { get }
  @available(tvOS 10, *)
  func startPlayback(with playbackStyle: PHLivePhotoViewPlaybackStyle)
  @available(tvOS 10, *)
  func stopPlayback()
}
@available(tvOS 10, *)
protocol PHLivePhotoViewDelegate : NSObjectProtocol {
  @available(tvOS 10, *)
  optional func livePhotoView(_ livePhotoView: PHLivePhotoView, willBeginPlaybackWith playbackStyle: PHLivePhotoViewPlaybackStyle)
  @available(tvOS 10, *)
  @asyncHandler optional func livePhotoView(_ livePhotoView: PHLivePhotoView, didEndPlaybackWith playbackStyle: PHLivePhotoViewPlaybackStyle)
}
