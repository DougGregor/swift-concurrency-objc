
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit.")
class MPMoviePlayerViewController : UIViewController {
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit.")
  init!(contentURL: URL!)
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit.")
  var moviePlayer: MPMoviePlayerController! { get }
}
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit.")
extension UIViewController {
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit.")
  func presentMoviePlayerViewControllerAnimated(_ moviePlayerViewController: MPMoviePlayerViewController!)
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit.")
  func dismissMoviePlayerViewControllerAnimated()
}
