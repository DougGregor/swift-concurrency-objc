
extension NSNotification.Name {
  @available(iOS 8.0, *)
  static let AVSampleBufferDisplayLayerFailedToDecode: NSNotification.Name
  @available(iOS 14.0, *)
  static let AVSampleBufferDisplayLayerRequiresFlushToResumeDecodingDidChange: NSNotification.Name
}
@available(iOS 8.0, *)
let AVSampleBufferDisplayLayerFailedToDecodeNotificationErrorKey: String
@available(iOS 8.0, *)
class AVSampleBufferDisplayLayer : CALayer {
  var controlTimebase: CMTimebase?
  var videoGravity: AVLayerVideoGravity
}
extension AVSampleBufferDisplayLayer : AVQueuedSampleBufferRendering {
  @available(iOS 8.0, *)
  var status: AVQueuedSampleBufferRenderingStatus { get }
  @available(iOS 8.0, *)
  var error: Error? { get }
  func flushAndRemoveImage()
  @available(iOS 14.0, *)
  var requiresFlushToResumeDecoding: Bool { get }
}
extension AVSampleBufferDisplayLayer {
  @available(iOS 13.0, *)
  var preventsCapture: Bool
}
extension AVSampleBufferDisplayLayer {
  @available(iOS 13.0, *)
  var preventsDisplaySleepDuringVideoPlayback: Bool
}
