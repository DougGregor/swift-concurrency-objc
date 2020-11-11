
enum RPCameraPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case front
  case back
}
class RPScreenRecorder : NSObject {
  class func shared() -> RPScreenRecorder
  @available(macOS 11.0, *)
  func startRecording(handler: ((Error?) -> Void)? = nil)
  func stopRecording(handler: ((RPPreviewViewController?, Error?) -> Void)? = nil)
  @available(macOS 11.0, *)
  func stopRecording(withOutput url: URL, completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 11.0, *)
  func stopRecording(withOutput url: URL) async throws
  func discardRecording(handler: @escaping () -> Void)
  @available(macOS 11.0, *)
  func startCapture(handler captureHandler: ((CMSampleBuffer, RPSampleBufferType, Error?) -> Void)?, completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 11.0, *)
  func startCaptureAsync(handler captureHandler: ((CMSampleBuffer, RPSampleBufferType, Error?) -> Void)?) async throws
  @available(macOS 11.0, *)
  func stopCapture(handler: ((Error?) -> Void)? = nil)
  weak var delegate: @sil_weak RPScreenRecorderDelegate?
  var isAvailable: Bool { get }
  var isRecording: Bool { get }
  var isMicrophoneEnabled: Bool
  @available(macOS 11.0, *)
  var isCameraEnabled: Bool
  @available(macOS 11.0, *)
  var cameraPosition: RPCameraPosition
  @available(macOS 11.0, *)
  var cameraPreviewView: NSView? { get }
}
@available(macOS 11.0, *)
protocol RPScreenRecorderDelegate : NSObjectProtocol {
  @available(macOS 11.0, *)
  @asyncHandler optional func screenRecorder(_ screenRecorder: RPScreenRecorder, didStopRecordingWith previewViewController: RPPreviewViewController?, error: Error?)
  @asyncHandler optional func screenRecorderDidChangeAvailability(_ screenRecorder: RPScreenRecorder)
}
