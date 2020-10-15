
@available(macOS 10.15, *)
class AVPictureInPictureController : NSObject {
  class func isPictureInPictureSupported() -> Bool
  class var pictureInPictureButtonStartImage: NSImage { get }
  class var pictureInPictureButtonStopImage: NSImage { get }
  init?(playerLayer: AVPlayerLayer)
  var playerLayer: AVPlayerLayer { get }
  weak var delegate: @sil_weak AVPictureInPictureControllerDelegate?
  func startPictureInPicture()
  func stopPictureInPicture()
  var isPictureInPicturePossible: Bool { get }
  var isPictureInPictureActive: Bool { get }
  var isPictureInPictureSuspended: Bool { get }
  @available(macOS 11.0, *)
  var requiresLinearPlayback: Bool
}
@available(macOS 10.15, *)
protocol AVPictureInPictureControllerDelegate : NSObjectProtocol {
  optional func pictureInPictureControllerWillStartPictureInPicture(_ pictureInPictureController: AVPictureInPictureController)
  @asyncHandler optional func pictureInPictureControllerDidStartPictureInPicture(_ pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureController(_ pictureInPictureController: AVPictureInPictureController, failedToStartPictureInPictureWithError error: Error)
  optional func pictureInPictureControllerWillStopPictureInPicture(_ pictureInPictureController: AVPictureInPictureController)
  @asyncHandler optional func pictureInPictureControllerDidStopPictureInPicture(_ pictureInPictureController: AVPictureInPictureController)
  optional func pictureInPictureController(_ pictureInPictureController: AVPictureInPictureController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: @escaping (Bool) -> Void)
  optional func pictureInPictureController(_ pictureInPictureController: AVPictureInPictureController) async -> Bool
}
