
@available(macOS 10.9, *)
class AVPlayerView : NSView {
  var player: AVPlayer?
  var controlsStyle: AVPlayerViewControlsStyle
  @available(macOS 10.10, *)
  var videoGravity: AVLayerVideoGravity
  @available(macOS 10.10, *)
  var isReadyForDisplay: Bool { get }
  @available(macOS 10.10, *)
  var videoBounds: NSRect { get }
  @available(macOS 10.10, *)
  var contentOverlayView: NSView? { get }
  @available(macOS 10.13, *)
  var updatesNowPlayingInfoCenter: Bool
}
@available(macOS 10.9, *)
enum AVPlayerViewControlsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case inline
  case floating
  case minimal
  static var `default`: AVPlayerViewControlsStyle { get }
}
extension AVPlayerView {
  var showsFrameSteppingButtons: Bool
  var showsSharingServiceButton: Bool
  @IBOutlet var actionPopUpButtonMenu: NSMenu?
  var showsFullScreenToggleButton: Bool
  @available(macOS 10.15, *)
  var showsTimecodes: Bool
}
extension AVPlayerView {
  var canBeginTrimming: Bool { get }
  func beginTrimming(completionHandler handler: ((AVPlayerViewTrimResult) -> Void)? = nil)
  func beginTrimming() async -> AVPlayerViewTrimResult
}
@available(macOS 10.9, *)
enum AVPlayerViewTrimResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case okButton
  case cancelButton
}
extension AVPlayerView {
  func flashChapterNumber(_ chapterNumber: Int, chapterTitle: String?)
}
extension AVPlayerView {
  @available(macOS 10.15, *)
  var allowsPictureInPicturePlayback: Bool
  @available(macOS 10.15, *)
  weak var pictureInPictureDelegate: @sil_weak AVPlayerViewPictureInPictureDelegate?
}
@available(macOS 10.15, *)
protocol AVPlayerViewPictureInPictureDelegate : NSObjectProtocol {
  optional func playerViewWillStartPicture(inPicture playerView: AVPlayerView)
  @asyncHandler optional func playerViewDidStartPicture(inPicture playerView: AVPlayerView)
  optional func playerView(_ playerView: AVPlayerView, failedToStartPictureInPictureWithError error: Error)
  optional func playerViewWillStopPicture(inPicture playerView: AVPlayerView)
  @asyncHandler optional func playerViewDidStopPicture(inPicture playerView: AVPlayerView)
  optional func playerView(_ playerView: AVPlayerView, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: @escaping (Bool) -> Void)
  optional func playerView(_ playerView: AVPlayerView) async -> Bool
  optional func playerViewShouldAutomaticallyDismissAtPicture(inPictureStart playerView: AVPlayerView) -> Bool
}
