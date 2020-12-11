
@available(iOS 9.1, iOS 9.1, *)
struct PHLivePhotoBadgeOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(iOS 9.1, *)
  static var overContent: PHLivePhotoBadgeOptions { get }
  @available(iOS 9.1, *)
  static var liveOff: PHLivePhotoBadgeOptions { get }
}
@available(iOS 9.1, iOS 9.1, *)
enum PHLivePhotoViewPlaybackStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 9.1, *)
  case undefined
  @available(iOS 9.1, *)
  case full
  @available(iOS 9.1, *)
  case hint
}
@available(iOS 9.1, *)
class PHLivePhotoView : UIView {
  @available(iOS 9.1, *)
  class func livePhotoBadgeImage(options badgeOptions: PHLivePhotoBadgeOptions = []) -> UIImage
  @available(iOS 9.1, *)
  weak var delegate: @sil_weak PHLivePhotoViewDelegate?
  @available(iOS 9.1, *)
  var livePhoto: PHLivePhoto?
  @available(iOS 9.1, *)
  var isMuted: Bool
  @available(iOS 9.1, *)
  var playbackGestureRecognizer: UIGestureRecognizer { get }
  @available(iOS 9.1, *)
  func startPlayback(with playbackStyle: PHLivePhotoViewPlaybackStyle)
  @available(iOS 9.1, *)
  func stopPlayback()
}
@available(iOS 9.1, *)
protocol PHLivePhotoViewDelegate : NSObjectProtocol {
  @available(iOS 9.1, *)
  optional func livePhotoView(_ livePhotoView: PHLivePhotoView, willBeginPlaybackWith playbackStyle: PHLivePhotoViewPlaybackStyle)
  @available(iOS 9.1, *)
  optional func livePhotoView(_ livePhotoView: PHLivePhotoView, didEndPlaybackWith playbackStyle: PHLivePhotoViewPlaybackStyle)
}
