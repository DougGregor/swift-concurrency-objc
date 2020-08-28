
@available(iOS 8.0, *)
class AVPlayerViewController : UIViewController {
  var player: AVPlayer?
  var showsPlaybackControls: Bool
  @available(iOS 13.0, *)
  var showsTimecodes: Bool
  var videoGravity: AVLayerVideoGravity
  var isReadyForDisplay: Bool { get }
  var videoBounds: CGRect { get }
  var contentOverlayView: UIView? { get }
  @available(iOS 9.0, *)
  var allowsPictureInPicturePlayback: Bool
  @available(iOS 10.0, *)
  var updatesNowPlayingInfoCenter: Bool
  @available(iOS 11.0, *)
  var entersFullScreenWhenPlaybackBegins: Bool
  @available(iOS 11.0, *)
  var exitsFullScreenWhenPlaybackEnds: Bool
  @available(iOS 11.0, *)
  var requiresLinearPlayback: Bool
  @available(iOS 9.0, *)
  var pixelBufferAttributes: [String : Any]?
  @available(iOS 9.0, *)
  weak var delegate: @sil_weak AVPlayerViewControllerDelegate?
}
protocol AVPlayerViewControllerDelegate : NSObjectProtocol {
  @available(iOS 12.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, willBeginFullScreenPresentationWithAnimationCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 12.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, willEndFullScreenPresentationWithAnimationCoordinator coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  optional func playerViewControllerWillStartPictureInPicture(_ playerViewController: AVPlayerViewController)
  @available(iOS 8.0, *)
  optional func playerViewControllerDidStartPictureInPicture(_ playerViewController: AVPlayerViewController)
  @available(iOS 8.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, failedToStartPictureInPictureWithError error: Error)
  @available(iOS 8.0, *)
  optional func playerViewControllerWillStopPictureInPicture(_ playerViewController: AVPlayerViewController)
  @available(iOS 8.0, *)
  optional func playerViewControllerDidStopPictureInPicture(_ playerViewController: AVPlayerViewController)
  @available(iOS 8.0, *)
  optional func playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart(_ playerViewController: AVPlayerViewController) -> Bool
  @available(iOS 8.0, *)
  optional func playerViewController(_ playerViewController: AVPlayerViewController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: @escaping (Bool) -> Void)
}
