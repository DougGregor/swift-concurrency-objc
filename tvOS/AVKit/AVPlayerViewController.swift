
@available(tvOS 9.0, *)
class AVPlayerViewController : UIViewController {
  var player: AVPlayer?
  var showsPlaybackControls: Bool
  var requiresLinearPlayback: Bool
  @available(tvOS 11.2, *)
  var appliesPreferredDisplayCriteriaAutomatically: Bool
  @available(tvOS 14.0, *)
  var allowsPictureInPicturePlayback: Bool
  var videoGravity: AVLayerVideoGravity
  var isReadyForDisplay: Bool { get }
  var contentOverlayView: UIView? { get }
  @available(tvOS 11.0, *)
  var unobscuredContentGuide: UILayoutGuide { get }
  @available(tvOS 11.0, *)
  var pixelBufferAttributes: [String : Any]?
  weak var delegate: @sil_weak AVPlayerViewControllerDelegate?
}
extension AVPlayerViewController {
  var allowedSubtitleOptionLanguages: [String]?
  var requiresFullSubtitles: Bool
}
enum AVPlayerViewControllerSkippingBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case skipItem
}
extension AVPlayerViewController {
  @available(tvOS 10.0, *)
  var skippingBehavior: AVPlayerViewControllerSkippingBehavior
  @available(tvOS 10.0, *)
  var isSkipForwardEnabled: Bool
  @available(tvOS 10.0, *)
  var isSkipBackwardEnabled: Bool
}
extension AVPlayerViewController {
  @available(tvOS 11.0, *)
  var playbackControlsIncludeTransportBar: Bool
  @available(tvOS 11.0, *)
  var playbackControlsIncludeInfoViews: Bool
  @available(tvOS 11.0, *)
  var customInfoViewController: UIViewController?
  @available(tvOS 13.0, *)
  var customOverlayViewController: UIViewController?
}
protocol AVPlayerViewControllerDelegate : NSObjectProtocol {
  @available(tvOS 11.0, *)
  optional func playerViewControllerShouldDismiss(_ playerViewController: AVPlayerViewController) -> Bool
  @available(tvOS 11.0, *)
  optional func playerViewControllerWillBeginDismissalTransition(_ playerViewController: AVPlayerViewController)
  @available(tvOS 11.0, *)
  optional func playerViewControllerDidEndDismissalTransition(_ playerViewController: AVPlayerViewController)
  @available(tvOS 9.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, willPresent interstitial: AVInterstitialTimeRange)
  @available(tvOS 9.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, didPresent interstitial: AVInterstitialTimeRange)
  @available(tvOS 9.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, willResumePlaybackAfterUserNavigatedFrom oldTime: CMTime, to targetTime: CMTime)
  @available(tvOS 10.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, timeToSeekAfterUserNavigatedFrom oldTime: CMTime, to targetTime: CMTime) -> CMTime
  @available(tvOS 9.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, didSelect mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
  @available(tvOS 10.0, *)
  optional func skipToNextItem(for playerViewController: AVPlayerViewController)
  @available(tvOS 10.0, *)
  optional func skipToPreviousItem(for playerViewController: AVPlayerViewController)
  @available(tvOS 13.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, skipToNextChannel completion: @escaping (Bool) -> Void)
  @available(tvOS 13.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController) async -> Bool
  @available(tvOS 13.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, skipToPreviousChannel completion: @escaping (Bool) -> Void)
  @available(tvOS 13.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController) async -> Bool
  @available(tvOS 13.0, *)
  optional func nextChannelInterstitialViewController(for playerViewController: AVPlayerViewController) -> UIViewController
  @available(tvOS 13.0, *)
  optional func previousChannelInterstitialViewController(for playerViewController: AVPlayerViewController) -> UIViewController
  @available(tvOS 10.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, shouldPresent proposal: AVContentProposal) -> Bool
  @available(tvOS 10.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, didAccept proposal: AVContentProposal)
  @available(tvOS 10.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, didReject proposal: AVContentProposal)
  @available(tvOS 11.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, willTransitionToVisibilityOfTransportBar visible: Bool, with coordinator: AVPlayerViewControllerAnimationCoordinator)
  @available(tvOS 9.0, *)
  optional func playerViewControllerWillStartPictureInPicture(_ playerViewController: AVPlayerViewController)
  @available(tvOS 9.0, *)
  optional func playerViewControllerDidStartPictureInPicture(_ playerViewController: AVPlayerViewController)
  @available(tvOS 9.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, failedToStartPictureInPictureWithError error: Error)
  @available(tvOS 9.0, *)
  optional func playerViewControllerWillStopPictureInPicture(_ playerViewController: AVPlayerViewController)
  @available(tvOS 9.0, *)
  optional func playerViewControllerDidStopPictureInPicture(_ playerViewController: AVPlayerViewController)
  @available(tvOS 9.0, *)
  optional func playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart(_ playerViewController: AVPlayerViewController) -> Bool
  @available(tvOS 9.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: @escaping (Bool) -> Void)
  @available(tvOS 9.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController) async -> Bool
}
protocol AVPlayerViewControllerAnimationCoordinator : NSObjectProtocol {
  @available(tvOS 11.0, *)
  func addCoordinatedAnimations(_ animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(tvOS 11.0, *)
  func addCoordinatedAnimations(_ animations: (() -> Void)?) async -> Bool
}
