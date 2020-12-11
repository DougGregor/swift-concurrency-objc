
@available(watchOS 3.0, *)
class HMCameraStreamControl : HMCameraControl {
  weak var delegate: @sil_weak HMCameraStreamControlDelegate?
  var streamState: HMCameraStreamState { get }
  var cameraStream: HMCameraStream? { get }
  func startStream()
  func stopStream()
}
@available(watchOS 3.0, *)
protocol HMCameraStreamControlDelegate : NSObjectProtocol {
  optional func cameraStreamControlDidStartStream(_ cameraStreamControl: HMCameraStreamControl)
  optional func cameraStreamControl(_ cameraStreamControl: HMCameraStreamControl, didStopStreamWithError error: Error?)
}
