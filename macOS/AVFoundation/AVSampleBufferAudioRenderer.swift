
@available(macOS 10.13, *)
class AVSampleBufferAudioRenderer : NSObject, AVQueuedSampleBufferRendering {
  var status: AVQueuedSampleBufferRenderingStatus { get }
  var error: Error? { get }
  @available(macOS 10.13, *)
  var audioOutputDeviceUniqueID: String?
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
}
extension AVSampleBufferAudioRenderer {
  var volume: Float
  var isMuted: Bool
}
extension AVSampleBufferAudioRenderer {
  func flush(fromSourceTime time: CMTime, completionHandler: @escaping (Bool) -> Void)
  func flush(fromSourceTime time: CMTime) async -> Bool
}
extension NSNotification.Name {
  @available(macOS 10.13, *)
  static let AVSampleBufferAudioRendererWasFlushedAutomatically: NSNotification.Name
}
@available(macOS 10.13, *)
let AVSampleBufferAudioRendererFlushTimeKey: String
