
@available(iOS 11.0, *)
class AVCaptureDataOutputSynchronizer : NSObject {
  init(dataOutputs: [AVCaptureOutput])
  var dataOutputs: [AVCaptureOutput] { get }
  func setDelegate(_ delegate: AVCaptureDataOutputSynchronizerDelegate?, queue delegateCallbackQueue: DispatchQueue?)
  var delegate: AVCaptureDataOutputSynchronizerDelegate? { get }
  var delegateCallbackQueue: DispatchQueue? { get }
}
@available(iOS 11.0, *)
protocol AVCaptureDataOutputSynchronizerDelegate : NSObjectProtocol {
  @asyncHandler func dataOutputSynchronizer(_ synchronizer: AVCaptureDataOutputSynchronizer, didOutput synchronizedDataCollection: AVCaptureSynchronizedDataCollection)
}
@available(iOS 11.0, *)
class AVCaptureSynchronizedDataCollection : NSObject, NSFastEnumeration {
  func synchronizedData(for captureOutput: AVCaptureOutput) -> AVCaptureSynchronizedData?
  subscript(key: AVCaptureOutput) -> AVCaptureSynchronizedData? { get }
  var count: Int { get }
}

@available(iOS 11.0, *)
extension AVCaptureSynchronizedDataCollection : Sequence {
}
@available(iOS 11.0, *)
class AVCaptureSynchronizedData : NSObject {
  var timestamp: CMTime { get }
}
@available(iOS 11.0, *)
class AVCaptureSynchronizedSampleBufferData : AVCaptureSynchronizedData {
  var sampleBuffer: CMSampleBuffer { get }
  var sampleBufferWasDropped: Bool { get }
  var droppedReason: AVCaptureOutput.DataDroppedReason { get }
}
@available(iOS 11.0, *)
class AVCaptureSynchronizedMetadataObjectData : AVCaptureSynchronizedData {
  var metadataObjects: [AVMetadataObject] { get }
}
@available(iOS 11.0, *)
class AVCaptureSynchronizedDepthData : AVCaptureSynchronizedData {
  var depthData: AVDepthData { get }
  var depthDataWasDropped: Bool { get }
  var droppedReason: AVCaptureOutput.DataDroppedReason { get }
}
