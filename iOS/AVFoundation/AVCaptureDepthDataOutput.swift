
@available(iOS 11.0, *)
class AVCaptureDepthDataOutput : AVCaptureOutput {
  func setDelegate(_ delegate: AVCaptureDepthDataOutputDelegate?, callbackQueue: DispatchQueue?)
  var delegate: AVCaptureDepthDataOutputDelegate? { get }
  var delegateCallbackQueue: DispatchQueue? { get }
  var alwaysDiscardsLateDepthData: Bool
  var isFilteringEnabled: Bool
}
@available(iOS 11.0, *)
protocol AVCaptureDepthDataOutputDelegate : NSObjectProtocol {
  optional func depthDataOutput(_ output: AVCaptureDepthDataOutput, didOutput depthData: AVDepthData, timestamp: CMTime, connection: AVCaptureConnection)
  optional func depthDataOutput(_ output: AVCaptureDepthDataOutput, didDrop depthData: AVDepthData, timestamp: CMTime, connection: AVCaptureConnection, reason: AVCaptureOutput.DataDroppedReason)
}
