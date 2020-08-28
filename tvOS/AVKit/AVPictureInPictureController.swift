
@available(tvOS 14.0, *)
class AVPictureInPictureController : NSObject {
  class func isPictureInPictureSupported() -> Bool
  class func pictureInPictureButtonStartImage(compatibleWith traitCollection: UITraitCollection?) -> UIImage
  class func pictureInPictureButtonStopImage(compatibleWith traitCollection: UITraitCollection?) -> UIImage
  @available(tvOS 14.0, *)
  class var pictureInPictureButtonStartImage: UIImage { get }
  @available(tvOS 14.0, *)
  class var pictureInPictureButtonStopImage: UIImage { get }
  init?(playerLayer: AVPlayerLayer)
  var playerLayer: AVPlayerLayer { get }
  weak var delegate: @sil_weak AVPictureInPictureControllerDelegate?
  func startPictureInPicture()
  func stopPictureInPicture()
  var isPictureInPicturePossible: Bool { get }
  var isPictureInPictureActive: Bool { get }
  var isPictureInPictureSuspended: Bool { get }
  @available(tvOS 14.0, *)
  var canStopPictureInPicture: Bool { get }
  @available(tvOS 14.0, *)
  var requiresLinearPlayback: Bool
}
@available(tvOS 14.0, *)
protocol AVPictureInPictureControllerDelegate : NSObjectProtocol {
  optional func pictureInPictureControllerWillStartPictureInPicture(_ pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureControllerDidStartPictureInPicture(_ pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureController(_ pictureInPictureController: AVPictureInPictureController, failedToStartPictureInPictureWithError error: Error)
  optional func pictureInPictureControllerWillStopPictureInPicture(_ pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureControllerDidStopPictureInPicture(_ pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureController(_ pictureInPictureController: AVPictureInPictureController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: @escaping (Bool) -> Void)
}
