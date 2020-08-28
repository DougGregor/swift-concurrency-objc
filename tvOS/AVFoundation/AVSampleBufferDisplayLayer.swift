
extension NSNotification.Name {
  @available(tvOS 10.2, *)
  static let AVSampleBufferDisplayLayerFailedToDecode: NSNotification.Name
  @available(tvOS 14.0, *)
  static let AVSampleBufferDisplayLayerRequiresFlushToResumeDecodingDidChange: NSNotification.Name
}
@available(tvOS 10.2, *)
let AVSampleBufferDisplayLayerFailedToDecodeNotificationErrorKey: String
@available(tvOS 10.2, *)
class AVSampleBufferDisplayLayer : CALayer {
  var controlTimebase: CMTimebase?
  var videoGravity: AVLayerVideoGravity
}
extension AVSampleBufferDisplayLayer : AVQueuedSampleBufferRendering {
  @available(tvOS 10.2, *)
  var status: AVQueuedSampleBufferRenderingStatus { get }
  @available(tvOS 10.2, *)
  var error: Error? { get }
  func flushAndRemoveImage()
  @available(tvOS 14.0, *)
  var requiresFlushToResumeDecoding: Bool { get }
}
extension AVSampleBufferDisplayLayer {
  @available(tvOS 13.0, *)
  var preventsCapture: Bool
}
extension AVSampleBufferDisplayLayer {
  @available(tvOS 13.0, *)
  var preventsDisplaySleepDuringVideoPlayback: Bool
}
