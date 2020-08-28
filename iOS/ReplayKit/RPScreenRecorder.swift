
@available(iOS 11.0, *)
enum RPCameraPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case front
  case back
}
class RPScreenRecorder : NSObject {
  class func shared() -> RPScreenRecorder
  @available(iOS, introduced: 9.0, deprecated: 10.0, message: "Use microphoneEnabled property")
  func startRecording(withMicrophoneEnabled microphoneEnabled: Bool, handler: ((Error?) -> Void)? = nil)
  @available(iOS 10.0, *)
  func startRecording(handler: ((Error?) -> Void)? = nil)
  func stopRecording(handler: ((RPPreviewViewController?, Error?) -> Void)? = nil)
  @available(iOS 14.0, *)
  func stopRecording(withOutput url: URL, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 14.0, *)
  func stopRecording(withOutput url: URL) async throws
  func discardRecording(handler: @escaping () -> Void)
  @available(iOS 11.0, *)
  func startCapture(handler captureHandler: ((CMSampleBuffer, RPSampleBufferType, Error?) -> Void)?, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 11.0, *)
  func startCapture(handler captureHandler: ((CMSampleBuffer, RPSampleBufferType, Error?) -> Void)?) async throws
  @available(iOS 11.0, *)
  func stopCapture(handler: ((Error?) -> Void)? = nil)
  weak var delegate: @sil_weak RPScreenRecorderDelegate?
  var isAvailable: Bool { get }
  var isRecording: Bool { get }
  var isMicrophoneEnabled: Bool
  @available(iOS 10.0, *)
  var isCameraEnabled: Bool
  @available(iOS 11.0, *)
  var cameraPosition: RPCameraPosition
  @available(iOS 10.0, *)
  var cameraPreviewView: UIView? { get }
}
@available(iOS 9.0, *)
protocol RPScreenRecorderDelegate : NSObjectProtocol {
  @available(iOS, introduced: 9.0, deprecated: 10.0, message: "No longer supported")
  optional func screenRecorder(_ screenRecorder: RPScreenRecorder, didStopRecordingWithError error: Error, previewViewController: RPPreviewViewController?)
  @available(iOS 11.0, *)
  optional func screenRecorder(_ screenRecorder: RPScreenRecorder, didStopRecordingWith previewViewController: RPPreviewViewController?, error: Error?)
  optional func screenRecorderDidChangeAvailability(_ screenRecorder: RPScreenRecorder)
}
