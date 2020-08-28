
extension NSNotification.Name {
  @available(macOS 10.7, *)
  static let AVCaptureSessionRuntimeError: NSNotification.Name
  @available(macOS 10.7, *)
  static let AVCaptureSessionDidStartRunning: NSNotification.Name
  @available(macOS 10.7, *)
  static let AVCaptureSessionDidStopRunning: NSNotification.Name
  @available(macOS 10.14, *)
  static let AVCaptureSessionWasInterrupted: NSNotification.Name
  @available(macOS 10.14, *)
  static let AVCaptureSessionInterruptionEnded: NSNotification.Name
}
@available(macOS 10.7, *)
let AVCaptureSessionErrorKey: String
extension AVCaptureSession {
}
@available(macOS 10.7, *)
enum AVCaptureVideoOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case portrait
  case portraitUpsideDown
  case landscapeRight
  case landscapeLeft
}
@available(macOS 10.7, *)
class AVCaptureSession : NSObject {
  func canSetSessionPreset(_ preset: AVCaptureSession.Preset) -> Bool
  var sessionPreset: AVCaptureSession.Preset
  var inputs: [AVCaptureInput] { get }
  func canAddInput(_ input: AVCaptureInput) -> Bool
  func addInput(_ input: AVCaptureInput)
  func removeInput(_ input: AVCaptureInput)
  var outputs: [AVCaptureOutput] { get }
  func canAddOutput(_ output: AVCaptureOutput) -> Bool
  func addOutput(_ output: AVCaptureOutput)
  func removeOutput(_ output: AVCaptureOutput)
  func addInputWithNoConnections(_ input: AVCaptureInput)
  func addOutputWithNoConnections(_ output: AVCaptureOutput)
  @available(macOS 10.15, *)
  var connections: [AVCaptureConnection] { get }
  func canAddConnection(_ connection: AVCaptureConnection) -> Bool
  func addConnection(_ connection: AVCaptureConnection)
  func removeConnection(_ connection: AVCaptureConnection)
  func beginConfiguration()
  func commitConfiguration()
  var isRunning: Bool { get }
  func startRunning()
  func stopRunning()
  @available(macOS 10.9, *)
  var masterClock: CMClock? { get }
}
@available(macOS 10.7, *)
enum AVVideoFieldMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case both
  case topOnly
  case bottomOnly
  case deinterlace
}
@available(macOS 10.7, *)
class AVCaptureConnection : NSObject {
  init(inputPorts ports: [AVCaptureInput.Port], output: AVCaptureOutput)
  init(inputPort port: AVCaptureInput.Port, videoPreviewLayer layer: AVCaptureVideoPreviewLayer)
  var inputPorts: [AVCaptureInput.Port] { get }
  var output: AVCaptureOutput? { get }
  var videoPreviewLayer: AVCaptureVideoPreviewLayer? { get }
  var isEnabled: Bool
  var isActive: Bool { get }
  var audioChannels: [AVCaptureAudioChannel] { get }
  var isVideoMirroringSupported: Bool { get }
  var isVideoMirrored: Bool
  var automaticallyAdjustsVideoMirroring: Bool
  var isVideoOrientationSupported: Bool { get }
  var videoOrientation: AVCaptureVideoOrientation
  var isVideoFieldModeSupported: Bool { get }
  var videoFieldMode: AVVideoFieldMode
  var isVideoMinFrameDurationSupported: Bool { get }
  var videoMinFrameDuration: CMTime
  @available(macOS 10.9, *)
  var isVideoMaxFrameDurationSupported: Bool { get }
  @available(macOS 10.9, *)
  var videoMaxFrameDuration: CMTime
}
@available(macOS 10.7, *)
class AVCaptureAudioChannel : NSObject {
  var averagePowerLevel: Float { get }
  var peakHoldLevel: Float { get }
  var volume: Float
  var isEnabled: Bool
}
