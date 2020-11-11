
class RPScreenRecorder : NSObject {
  class func shared() -> RPScreenRecorder
  @available(tvOS, introduced: 9.0, deprecated: 10.0, message: "Use microphoneEnabled property")
  func startRecording(withMicrophoneEnabled microphoneEnabled: Bool, handler: ((Error?) -> Void)? = nil)
  @available(tvOS 10.0, *)
  func startRecording(handler: ((Error?) -> Void)? = nil)
  func stopRecording(handler: ((RPPreviewViewController?, Error?) -> Void)? = nil)
  @available(tvOS 14.0, *)
  func stopRecording(withOutput url: URL, completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 14.0, *)
  func stopRecording(withOutput url: URL) async throws
  func discardRecording(handler: @escaping () -> Void)
  @available(tvOS 11.0, *)
  func startCapture(handler captureHandler: ((CMSampleBuffer, RPSampleBufferType, Error?) -> Void)?, completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 11.0, *)
  func startCaptureAsync(handler captureHandler: ((CMSampleBuffer, RPSampleBufferType, Error?) -> Void)?) async throws
  @available(tvOS 11.0, *)
  func stopCapture(handler: ((Error?) -> Void)? = nil)
  weak var delegate: @sil_weak RPScreenRecorderDelegate?
  var isAvailable: Bool { get }
  var isRecording: Bool { get }
}
@available(tvOS 10.0, *)
protocol RPScreenRecorderDelegate : NSObjectProtocol {
  @available(tvOS, introduced: 10.0, deprecated: 10.0, message: "No longer supported")
  @asyncHandler optional func screenRecorder(_ screenRecorder: RPScreenRecorder, didStopRecordingWithError error: Error, previewViewController: RPPreviewViewController?)
  @available(tvOS 11.0, *)
  @asyncHandler optional func screenRecorder(_ screenRecorder: RPScreenRecorder, didStopRecordingWith previewViewController: RPPreviewViewController?, error: Error?)
  @asyncHandler optional func screenRecorderDidChangeAvailability(_ screenRecorder: RPScreenRecorder)
}
