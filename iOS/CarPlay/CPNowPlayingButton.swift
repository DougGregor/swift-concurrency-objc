
let CPNowPlayingButtonMaximumImageSize: CGSize
@available(iOS 14.0, *)
class CPNowPlayingButton : NSObject, NSSecureCoding {
  init(handler: ((CPNowPlayingButton) -> Void)? = nil)
  var isEnabled: Bool
  var isSelected: Bool
}
class CPNowPlayingShuffleButton : CPNowPlayingButton {
}
class CPNowPlayingAddToLibraryButton : CPNowPlayingButton {
}
class CPNowPlayingMoreButton : CPNowPlayingButton {
}
class CPNowPlayingPlaybackRateButton : CPNowPlayingButton {
}
class CPNowPlayingRepeatButton : CPNowPlayingButton {
}
class CPNowPlayingImageButton : CPNowPlayingButton {
  init(image: UIImage, handler: ((CPNowPlayingButton) -> Void)? = nil)
  var image: UIImage? { get }
}
