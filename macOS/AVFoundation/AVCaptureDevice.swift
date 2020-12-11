
extension NSNotification.Name {
  @available(macOS 10.7, *)
  static let AVCaptureDeviceWasConnected: NSNotification.Name
  @available(macOS 10.7, *)
  static let AVCaptureDeviceWasDisconnected: NSNotification.Name
}
@available(macOS 10.7, *)
class AVCaptureDevice : NSObject {
  @available(macOS, introduced: 10.7, deprecated: 10.15, message: "Use AVCaptureDeviceDiscoverySession instead.")
  class func devices() -> [AVCaptureDevice]
  @available(macOS, introduced: 10.7, deprecated: 10.15, message: "Use AVCaptureDeviceDiscoverySession instead.")
  class func devices(for mediaType: AVMediaType) -> [AVCaptureDevice]
  class func `default`(for mediaType: AVMediaType) -> AVCaptureDevice?
  /*not inherited*/ init?(uniqueID deviceUniqueID: String)
  var uniqueID: String { get }
  var modelID: String { get }
  var localizedName: String { get }
  @available(macOS 10.9, *)
  var manufacturer: String { get }
  var transportType: Int32 { get }
  func hasMediaType(_ mediaType: AVMediaType) -> Bool
  func lockForConfiguration() throws
  func unlockForConfiguration()
  func supportsSessionPreset(_ preset: AVCaptureSession.Preset) -> Bool
  var isConnected: Bool { get }
  var isInUseByAnotherApplication: Bool { get }
  var isSuspended: Bool { get }
  var linkedDevices: [AVCaptureDevice] { get }
  var formats: [AVCaptureDevice.Format] { get }
  var activeFormat: AVCaptureDevice.Format
  var activeVideoMinFrameDuration: CMTime
  @available(macOS 10.9, *)
  var activeVideoMaxFrameDuration: CMTime
  var inputSources: [AVCaptureDevice.InputSource] { get }
  var activeInputSource: AVCaptureDevice.InputSource?
}
extension AVCaptureDevice {
  @available(macOS 10.7, *)
  enum Position : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unspecified
    case back
    case front
  }
  @available(macOS 10.15, *)
  struct DeviceType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(macOS 10.7, *)
  enum FlashMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case off
    case on
    case auto
  }
  @available(macOS 10.7, *)
  enum TorchMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case off
    case on
    case auto
  }
  @available(macOS 10.15, *)
  class let maxAvailableTorchLevel: Float
  @available(macOS 10.7, *)
  enum FocusMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case locked
    case autoFocus
    case continuousAutoFocus
  }
  @available(macOS 10.7, *)
  enum ExposureMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case locked
    case autoExpose
    case continuousAutoExposure
    @available(macOS 10.15, *)
    case custom
  }
  @available(macOS 10.7, *)
  enum WhiteBalanceMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case locked
    case autoWhiteBalance
    case continuousAutoWhiteBalance
  }
  @available(macOS 10.7, *)
  typealias TransportControlsSpeed = Float
  @available(macOS 10.7, *)
  enum TransportControlsPlaybackMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case notPlaying
    case playing
  }
  @available(macOS 10.15, *)
  class DiscoverySession : NSObject {
    convenience init(deviceTypes: [AVCaptureDevice.DeviceType], mediaType: AVMediaType?, position: AVCaptureDevice.Position)
    var devices: [AVCaptureDevice] { get }
  }
  @available(macOS 10.7, *)
  class Format : NSObject {
    var mediaType: AVMediaType { get }
    var formatDescription: CMFormatDescription { get }
    var videoSupportedFrameRateRanges: [AVFrameRateRange] { get }
    @available(macOS 10.15, *)
    var autoFocusSystem: AVCaptureDevice.Format.AutoFocusSystem { get }
    @available(macOS 10.15, *)
    var __supportedColorSpaces: [NSNumber] { get }
  }
  @available(macOS 10.7, *)
  class InputSource : NSObject {
    var inputSourceID: String { get }
    var localizedName: String { get }
  }
}
extension AVCaptureDevice {
  var position: AVCaptureDevice.Position { get }
}
extension AVCaptureDevice.DeviceType {
  @available(macOS 10.15, *)
  static let externalUnknown: AVCaptureDevice.DeviceType
  @available(macOS 10.15, *)
  static let builtInMicrophone: AVCaptureDevice.DeviceType
  @available(macOS 10.15, *)
  static let builtInWideAngleCamera: AVCaptureDevice.DeviceType
}
extension AVCaptureDevice {
  @available(macOS 10.15, *)
  var deviceType: AVCaptureDevice.DeviceType { get }
  @available(macOS 10.15, *)
  class func `default`(_ deviceType: AVCaptureDevice.DeviceType, for mediaType: AVMediaType?, position: AVCaptureDevice.Position) -> AVCaptureDevice?
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
  var hasFlash: Bool { get }
  @available(macOS 10.15, *)
  var isFlashAvailable: Bool { get }
  func isFlashModeSupported(_ flashMode: AVCaptureDevice.FlashMode) -> Bool
  var flashMode: AVCaptureDevice.FlashMode
}
extension AVCaptureDevice {
  var hasTorch: Bool { get }
  @available(macOS 10.15, *)
  var isTorchAvailable: Bool { get }
  @available(macOS 10.15, *)
  var isTorchActive: Bool { get }
  @available(macOS 10.15, *)
  var torchLevel: Float { get }
  func isTorchModeSupported(_ torchMode: AVCaptureDevice.TorchMode) -> Bool
  var torchMode: AVCaptureDevice.TorchMode
  @available(macOS 10.15, *)
  func setTorchModeOn(level torchLevel: Float) throws
}
extension AVCaptureDevice {
  func isFocusModeSupported(_ focusMode: AVCaptureDevice.FocusMode) -> Bool
  var focusMode: AVCaptureDevice.FocusMode
  var isFocusPointOfInterestSupported: Bool { get }
  var focusPointOfInterest: CGPoint
  var isAdjustingFocus: Bool { get }
}
extension AVCaptureDevice {
  func isExposureModeSupported(_ exposureMode: AVCaptureDevice.ExposureMode) -> Bool
  var exposureMode: AVCaptureDevice.ExposureMode
  var isExposurePointOfInterestSupported: Bool { get }
  var exposurePointOfInterest: CGPoint
  var isAdjustingExposure: Bool { get }
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
  func isWhiteBalanceModeSupported(_ whiteBalanceMode: AVCaptureDevice.WhiteBalanceMode) -> Bool
  var whiteBalanceMode: AVCaptureDevice.WhiteBalanceMode
  var isAdjustingWhiteBalance: Bool { get }
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
@available(macOS 10.14, *)
enum AVAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case authorized
}
extension AVCaptureDevice {
  @available(macOS 10.14, *)
  class func authorizationStatus(for mediaType: AVMediaType) -> AVAuthorizationStatus
  @available(macOS 10.14, *)
  class func requestAccess(for mediaType: AVMediaType, completionHandler handler: @escaping (Bool) -> Void)
  @available(macOS 10.14, *)
  class func requestAccess(for mediaType: AVMediaType) async -> Bool
}
extension AVCaptureDevice {
  var transportControlsSupported: Bool { get }
  var transportControlsPlaybackMode: AVCaptureDevice.TransportControlsPlaybackMode { get }
  var transportControlsSpeed: AVCaptureDevice.TransportControlsSpeed { get }
  func setTransportControlsPlaybackMode(_ mode: AVCaptureDevice.TransportControlsPlaybackMode, speed: AVCaptureDevice.TransportControlsSpeed)
}
extension AVCaptureDevice {
}
@available(macOS 10.15, *)
enum AVCaptureColorSpace : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case sRGB
  case P3_D65
}
extension AVCaptureDevice {
  @available(macOS 10.15, *)
  var activeColorSpace: AVCaptureColorSpace
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
@available(macOS 10.7, *)
class AVFrameRateRange : NSObject {
  var minFrameRate: Float64 { get }
  var maxFrameRate: Float64 { get }
  var maxFrameDuration: CMTime { get }
  var minFrameDuration: CMTime { get }
}
extension AVCaptureDevice.Format {
  @available(macOS 10.15, *)
  enum AutoFocusSystem : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case contrastDetection
    case phaseDetection
  }
}
extension AVCaptureDevice.Format {
}
extension AVCaptureDevice.Format {
}
extension AVCaptureDevice.Format {
}
