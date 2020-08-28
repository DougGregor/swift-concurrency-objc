
extension NSNotification.Name {
  @available(macOS 10.10, *)
  static let AVSampleBufferDisplayLayerFailedToDecode: NSNotification.Name
  @available(macOS 11.0, *)
  static let AVSampleBufferDisplayLayerRequiresFlushToResumeDecodingDidChange: NSNotification.Name
}
@available(macOS 10.10, *)
let AVSampleBufferDisplayLayerFailedToDecodeNotificationErrorKey: String
@available(macOS 10.8, *)
class AVSampleBufferDisplayLayer : CALayer {
  var controlTimebase: CMTimebase?
  var videoGravity: AVLayerVideoGravity
}
extension AVSampleBufferDisplayLayer : AVQueuedSampleBufferRendering {
  @available(macOS 10.10, *)
  var status: AVQueuedSampleBufferRenderingStatus { get }
  @available(macOS 10.10, *)
  var error: Error? { get }
  func flushAndRemoveImage()
  @available(macOS 11.0, *)
  var requiresFlushToResumeDecoding: Bool { get }
}
extension AVSampleBufferDisplayLayer {
  @available(macOS 10.15, *)
  var preventsCapture: Bool
}
extension AVSampleBufferDisplayLayer {
  @available(macOS 10.15, *)
  var preventsDisplaySleepDuringVideoPlayback: Bool
}
