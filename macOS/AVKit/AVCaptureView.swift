
@available(macOS 10.10, *)
class AVCaptureView : NSView {
  var session: AVCaptureSession? { get }
  func setSession(_ session: AVCaptureSession?, showVideoPreview: Bool, showAudioPreview: Bool)
  var fileOutput: AVCaptureFileOutput? { get }
  weak var delegate: @sil_weak AVCaptureViewDelegate?
  var controlsStyle: AVCaptureViewControlsStyle
  var videoGravity: AVLayerVideoGravity
}
@available(macOS 10.10, *)
enum AVCaptureViewControlsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inline
  case floating
  case inlineDeviceSelection
  static var `default`: AVCaptureViewControlsStyle { get }
}
protocol AVCaptureViewDelegate : NSObjectProtocol {
  @available(macOS 10.10, *)
  func captureView(_ captureView: AVCaptureView, startRecordingTo fileOutput: AVCaptureFileOutput)
}
