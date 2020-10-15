
extension NSNotification.Name {
  @available(iOS 4.0, *)
  static let AVCaptureSessionRuntimeError: NSNotification.Name
  @available(iOS 4.0, *)
  static let AVCaptureSessionDidStartRunning: NSNotification.Name
  @available(iOS 4.0, *)
  static let AVCaptureSessionDidStopRunning: NSNotification.Name
  @available(iOS 4.0, *)
  static let AVCaptureSessionWasInterrupted: NSNotification.Name
  @available(iOS 4.0, *)
  static let AVCaptureSessionInterruptionEnded: NSNotification.Name
}
@available(iOS 4.0, *)
let AVCaptureSessionErrorKey: String
extension AVCaptureSession {
  @available(iOS 9.0, *)
  enum InterruptionReason : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case videoDeviceNotAvailableInBackground
    case audioDeviceInUseByAnotherClient
    case videoDeviceInUseByAnotherClient
    case videoDeviceNotAvailableWithMultipleForegroundApps
    @available(iOS 11.1, *)
    case videoDeviceNotAvailableDueToSystemPressure
  }
}
@available(iOS 9.0, *)
let AVCaptureSessionInterruptionReasonKey: String
@available(iOS 11.1, *)
let AVCaptureSessionInterruptionSystemPressureStateKey: String
@available(iOS 4.0, *)
enum AVCaptureVideoOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case portrait
  case portraitUpsideDown
  case landscapeRight
  case landscapeLeft
}
@available(iOS 4.0, *)
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
  @available(iOS 8.0, *)
  func addInputWithNoConnections(_ input: AVCaptureInput)
  @available(iOS 8.0, *)
  func addOutputWithNoConnections(_ output: AVCaptureOutput)
  @available(iOS 13.0, *)
  var connections: [AVCaptureConnection] { get }
  @available(iOS 8.0, *)
  func canAddConnection(_ connection: AVCaptureConnection) -> Bool
  @available(iOS 8.0, *)
  func addConnection(_ connection: AVCaptureConnection)
  @available(iOS 8.0, *)
  func removeConnection(_ connection: AVCaptureConnection)
  func beginConfiguration()
  func commitConfiguration()
  var isRunning: Bool { get }
  @available(iOS 4.0, *)
  var isInterrupted: Bool { get }
  @available(iOS 7.0, *)
  var usesApplicationAudioSession: Bool
  @available(iOS 7.0, *)
  var automaticallyConfiguresApplicationAudioSession: Bool
  @available(iOS 10.0, *)
  var automaticallyConfiguresCaptureDeviceForWideColor: Bool
  func startRunning()
  func stopRunning()
  @available(iOS 7.0, *)
  var masterClock: CMClock? { get }
}
@available(iOS 13.0, *)
class AVCaptureMultiCamSession : AVCaptureSession {
  class var isMultiCamSupported: Bool { get }
  var hardwareCost: Float { get }
  var systemPressureCost: Float { get }
}
@available(iOS 4.0, *)
class AVCaptureConnection : NSObject {
  @available(iOS 8.0, *)
  init(inputPorts ports: [AVCaptureInput.Port], output: AVCaptureOutput)
  @available(iOS 8.0, *)
  init(inputPort port: AVCaptureInput.Port, videoPreviewLayer layer: AVCaptureVideoPreviewLayer)
  var inputPorts: [AVCaptureInput.Port] { get }
  var output: AVCaptureOutput? { get }
  @available(iOS 6.0, *)
  var videoPreviewLayer: AVCaptureVideoPreviewLayer? { get }
  var isEnabled: Bool
  var isActive: Bool { get }
  var audioChannels: [AVCaptureAudioChannel] { get }
  var isVideoMirroringSupported: Bool { get }
  var isVideoMirrored: Bool
  @available(iOS 6.0, *)
  var automaticallyAdjustsVideoMirroring: Bool
  var isVideoOrientationSupported: Bool { get }
  var videoOrientation: AVCaptureVideoOrientation
  @available(iOS 5.0, *)
  var videoMaxScaleAndCropFactor: CGFloat { get }
  @available(iOS 5.0, *)
  var videoScaleAndCropFactor: CGFloat
  @available(iOS 8.0, *)
  var preferredVideoStabilizationMode: AVCaptureVideoStabilizationMode
  @available(iOS 8.0, *)
  var activeVideoStabilizationMode: AVCaptureVideoStabilizationMode { get }
  @available(iOS 6.0, *)
  var isVideoStabilizationSupported: Bool { get }
  @available(iOS, introduced: 6.0, deprecated: 8.0, message: "Use activeVideoStabilizationMode instead.")
  var isVideoStabilizationEnabled: Bool { get }
  @available(iOS, introduced: 6.0, deprecated: 8.0, message: "Use preferredVideoStabilizationMode instead.")
  var enablesVideoStabilizationWhenAvailable: Bool
  @available(iOS 11.0, *)
  var isCameraIntrinsicMatrixDeliverySupported: Bool { get }
  @available(iOS 11.0, *)
  var isCameraIntrinsicMatrixDeliveryEnabled: Bool
}
@available(iOS 4.0, *)
class AVCaptureAudioChannel : NSObject {
  var averagePowerLevel: Float { get }
  var peakHoldLevel: Float { get }
}
