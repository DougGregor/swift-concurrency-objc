
extension NSNotification.Name {
  @available(iOS 4.0, *)
  static let AVCaptureDeviceWasConnected: NSNotification.Name
  @available(iOS 4.0, *)
  static let AVCaptureDeviceWasDisconnected: NSNotification.Name
  @available(iOS 5.0, *)
  static let AVCaptureDeviceSubjectAreaDidChange: NSNotification.Name
}
@available(iOS 4.0, *)
class AVCaptureDevice : NSObject {
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use AVCaptureDeviceDiscoverySession instead.")
  class func devices() -> [AVCaptureDevice]
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use AVCaptureDeviceDiscoverySession instead.")
  class func devices(for mediaType: AVMediaType) -> [AVCaptureDevice]
  class func `default`(for mediaType: AVMediaType) -> AVCaptureDevice?
  /*not inherited*/ init?(uniqueID deviceUniqueID: String)
  var uniqueID: String { get }
  var modelID: String { get }
  var localizedName: String { get }
  @available(iOS 14.0, *)
  var manufacturer: String { get }
  func hasMediaType(_ mediaType: AVMediaType) -> Bool
  func lockForConfiguration() throws
  func unlockForConfiguration()
  func supportsSessionPreset(_ preset: AVCaptureSession.Preset) -> Bool
  var isConnected: Bool { get }
  @available(iOS 14.0, *)
  var isSuspended: Bool { get }
  @available(iOS 7.0, *)
  var formats: [AVCaptureDevice.Format] { get }
  @available(iOS 7.0, *)
  var activeFormat: AVCaptureDevice.Format
  @available(iOS 7.0, *)
  var activeVideoMinFrameDuration: CMTime
  @available(iOS 7.0, *)
  var activeVideoMaxFrameDuration: CMTime
}
extension AVCaptureDevice {
  @available(iOS 4.0, *)
  enum Position : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unspecified
    case back
    case front
  }
  @available(iOS 10.0, *)
  struct DeviceType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(iOS 4.0, *)
  enum FlashMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case off
    case on
    case auto
  }
  @available(iOS 4.0, *)
  enum TorchMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case off
    case on
    case auto
  }
  @available(iOS 6.0, *)
  class let maxAvailableTorchLevel: Float
  @available(iOS 4.0, *)
  enum FocusMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case locked
    case autoFocus
    case continuousAutoFocus
  }
  @available(iOS 7.0, *)
  enum AutoFocusRangeRestriction : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case near
    case far
  }
  @available(iOS 8.0, *)
  class let currentLensPosition: Float
  @available(iOS 4.0, *)
  enum ExposureMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case locked
    case autoExpose
    case continuousAutoExposure
    @available(iOS 8.0, *)
    case custom
  }
  @available(iOS 8.0, *)
  class let currentExposureDuration: CMTime
  @available(iOS 8.0, *)
  class let currentISO: Float
  @available(iOS 8.0, *)
  class let currentExposureTargetBias: Float
  @available(iOS 4.0, *)
  enum WhiteBalanceMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case locked
    case autoWhiteBalance
    case continuousAutoWhiteBalance
  }
  @available(iOS 8.0, *)
  struct WhiteBalanceGains {
    var redGain: Float
    var greenGain: Float
    var blueGain: Float
    init()
    init(redGain: Float, greenGain: Float, blueGain: Float)
  }
  @available(iOS 8.0, *)
  struct WhiteBalanceChromaticityValues {
    var x: Float
    var y: Float
    init()
    init(x: Float, y: Float)
  }
  @available(iOS 8.0, *)
  struct WhiteBalanceTemperatureAndTintValues {
    var temperature: Float
    var tint: Float
    init()
    init(temperature: Float, tint: Float)
  }
  @available(iOS 8.0, *)
  class let currentWhiteBalanceGains: AVCaptureDevice.WhiteBalanceGains
  @available(iOS 10.0, *)
  class DiscoverySession : NSObject {
    convenience init(deviceTypes: [AVCaptureDevice.DeviceType], mediaType: AVMediaType?, position: AVCaptureDevice.Position)
    var devices: [AVCaptureDevice] { get }
    @available(iOS 13.0, *)
    var supportedMultiCamDeviceSets: [Set<AVCaptureDevice>] { get }
  }
  @available(iOS 7.0, *)
  class Format : NSObject {
    var mediaType: AVMediaType { get }
    var formatDescription: CMFormatDescription { get }
    var videoSupportedFrameRateRanges: [AVFrameRateRange] { get }
    var videoFieldOfView: Float { get }
    var isVideoBinned: Bool { get }
    @available(iOS 8.0, *)
    func isVideoStabilizationModeSupported(_ videoStabilizationMode: AVCaptureVideoStabilizationMode) -> Bool
    @available(iOS, introduced: 7.0, deprecated: 8.0, message: "Use isVideoStabilizationModeSupported: instead.")
    var isVideoStabilizationSupported: Bool { get }
    var videoMaxZoomFactor: CGFloat { get }
    var videoZoomFactorUpscaleThreshold: CGFloat { get }
    @available(iOS 8.0, *)
    var minExposureDuration: CMTime { get }
    @available(iOS 8.0, *)
    var maxExposureDuration: CMTime { get }
    @available(iOS 8.0, *)
    var minISO: Float { get }
    @available(iOS 8.0, *)
    var maxISO: Float { get }
    @available(iOS 13.0, *)
    var isGlobalToneMappingSupported: Bool { get }
    @available(iOS 8.0, *)
    var isVideoHDRSupported: Bool { get }
    @available(iOS 8.0, *)
    var highResolutionStillImageDimensions: CMVideoDimensions { get }
    @available(iOS 13.0, *)
    var isHighestPhotoQualitySupported: Bool { get }
    @available(iOS 8.0, *)
    var autoFocusSystem: AVCaptureDevice.Format.AutoFocusSystem { get }
    @available(iOS 10.0, *)
    var __supportedColorSpaces: [NSNumber] { get }
    @available(iOS 11.0, *)
    var videoMinZoomFactorForDepthDataDelivery: CGFloat { get }
    @available(iOS 11.0, *)
    var videoMaxZoomFactorForDepthDataDelivery: CGFloat { get }
    @available(iOS 11.0, *)
    var supportedDepthDataFormats: [AVCaptureDevice.Format] { get }
    @available(iOS 11.0, *)
    var unsupportedCaptureOutputClasses: [AnyClass] { get }
  }
}
extension AVCaptureDevice {
  var position: AVCaptureDevice.Position { get }
}
extension AVCaptureDevice.DeviceType {
  @available(iOS 10.0, *)
  static let builtInMicrophone: AVCaptureDevice.DeviceType
  @available(iOS 10.0, *)
  static let builtInWideAngleCamera: AVCaptureDevice.DeviceType
  @available(iOS 10.0, *)
  static let builtInTelephotoCamera: AVCaptureDevice.DeviceType
  @available(iOS 13.0, *)
  static let builtInUltraWideCamera: AVCaptureDevice.DeviceType
  @available(iOS 10.2, *)
  static let builtInDualCamera: AVCaptureDevice.DeviceType
  @available(iOS 13.0, *)
  static let builtInDualWideCamera: AVCaptureDevice.DeviceType
  @available(iOS 13.0, *)
  static let builtInTripleCamera: AVCaptureDevice.DeviceType
  @available(iOS 11.1, *)
  static let builtInTrueDepthCamera: AVCaptureDevice.DeviceType
  @available(iOS, introduced: 10.0, deprecated: 10.2, message: "Use AVCaptureDeviceTypeBuiltInDualCamera instead.")
  static let builtInDuoCamera: AVCaptureDevice.DeviceType
}
extension AVCaptureDevice {
  @available(iOS 10.0, *)
  var deviceType: AVCaptureDevice.DeviceType { get }
  @available(iOS 10.0, *)
  class func `default`(_ deviceType: AVCaptureDevice.DeviceType, for mediaType: AVMediaType?, position: AVCaptureDevice.Position) -> AVCaptureDevice?
}
extension AVCaptureDevice {
  @available(iOS 11.1, *)
  var systemPressureState: AVCaptureDevice.SystemPressureState { get }
}
extension AVCaptureDevice {
  @available(iOS 13.0, *)
  var isVirtualDevice: Bool { get }
  @available(iOS 13.0, *)
  var constituentDevices: [AVCaptureDevice] { get }
  @available(iOS 13.0, *)
  var virtualDeviceSwitchOverVideoZoomFactors: [NSNumber] { get }
}
extension AVCaptureDevice {
  var hasFlash: Bool { get }
  @available(iOS 5.0, *)
  var isFlashAvailable: Bool { get }
  @available(iOS, introduced: 5.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput's -isFlashScene instead.")
  var isFlashActive: Bool { get }
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput's -supportedFlashModes instead.")
  func isFlashModeSupported(_ flashMode: AVCaptureDevice.FlashMode) -> Bool
  @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use AVCapturePhotoSettings.flashMode instead.")
  var flashMode: AVCaptureDevice.FlashMode
}
extension AVCaptureDevice {
  var hasTorch: Bool { get }
  @available(iOS 5.0, *)
  var isTorchAvailable: Bool { get }
  @available(iOS 6.0, *)
  var isTorchActive: Bool { get }
  @available(iOS 5.0, *)
  var torchLevel: Float { get }
  func isTorchModeSupported(_ torchMode: AVCaptureDevice.TorchMode) -> Bool
  var torchMode: AVCaptureDevice.TorchMode
  @available(iOS 6.0, *)
  func setTorchModeOn(level torchLevel: Float) throws
}
extension AVCaptureDevice {
  func isFocusModeSupported(_ focusMode: AVCaptureDevice.FocusMode) -> Bool
  @available(iOS 10.0, *)
  var isLockingFocusWithCustomLensPositionSupported: Bool { get }
  var focusMode: AVCaptureDevice.FocusMode
  var isFocusPointOfInterestSupported: Bool { get }
  var focusPointOfInterest: CGPoint
  var isAdjustingFocus: Bool { get }
  @available(iOS 7.0, *)
  var isAutoFocusRangeRestrictionSupported: Bool { get }
  @available(iOS 7.0, *)
  var autoFocusRangeRestriction: AVCaptureDevice.AutoFocusRangeRestriction
  @available(iOS 7.0, *)
  var isSmoothAutoFocusSupported: Bool { get }
  @available(iOS 7.0, *)
  var isSmoothAutoFocusEnabled: Bool
  @available(iOS 8.0, *)
  var lensPosition: Float { get }
  @available(iOS 8.0, *)
  func setFocusModeLocked(lensPosition: Float, completionHandler handler: ((CMTime) -> Void)? = nil)
  @available(iOS 8.0, *)
  func setFocusModeLocked(lensPosition: Float) async -> CMTime
}
extension AVCaptureDevice {
  func isExposureModeSupported(_ exposureMode: AVCaptureDevice.ExposureMode) -> Bool
  var exposureMode: AVCaptureDevice.ExposureMode
  var isExposurePointOfInterestSupported: Bool { get }
  var exposurePointOfInterest: CGPoint
  @available(iOS 12.0, *)
  var activeMaxExposureDuration: CMTime
  var isAdjustingExposure: Bool { get }
  @available(iOS 8.0, *)
  var lensAperture: Float { get }
  @available(iOS 8.0, *)
  var exposureDuration: CMTime { get }
  @available(iOS 8.0, *)
  var iso: Float { get }
  @available(iOS 8.0, *)
  func setExposureModeCustom(duration: CMTime, iso ISO: Float, completionHandler handler: ((CMTime) -> Void)? = nil)
  @available(iOS 8.0, *)
  func setExposureModeCustom(duration: CMTime, iso ISO: Float) async -> CMTime
  @available(iOS 8.0, *)
  var exposureTargetOffset: Float { get }
  @available(iOS 8.0, *)
  var exposureTargetBias: Float { get }
  @available(iOS 8.0, *)
  var minExposureTargetBias: Float { get }
  @available(iOS 8.0, *)
  var maxExposureTargetBias: Float { get }
  @available(iOS 8.0, *)
  func setExposureTargetBias(_ bias: Float, completionHandler handler: ((CMTime) -> Void)? = nil)
  @available(iOS 8.0, *)
  func setExposureTargetBiasAsync(_ bias: Float) async -> CMTime
}
extension AVCaptureDevice {
  @available(iOS 13.0, *)
  var isGlobalToneMappingEnabled: Bool
}
extension AVCaptureDevice {
  func isWhiteBalanceModeSupported(_ whiteBalanceMode: AVCaptureDevice.WhiteBalanceMode) -> Bool
  @available(iOS 10.0, *)
  var isLockingWhiteBalanceWithCustomDeviceGainsSupported: Bool { get }
  var whiteBalanceMode: AVCaptureDevice.WhiteBalanceMode
  var isAdjustingWhiteBalance: Bool { get }
  @available(iOS 8.0, *)
  var deviceWhiteBalanceGains: AVCaptureDevice.WhiteBalanceGains { get }
  @available(iOS 8.0, *)
  var grayWorldDeviceWhiteBalanceGains: AVCaptureDevice.WhiteBalanceGains { get }
  @available(iOS 8.0, *)
  var maxWhiteBalanceGain: Float { get }
  @available(iOS 8.0, *)
  func setWhiteBalanceModeLocked(with whiteBalanceGains: AVCaptureDevice.WhiteBalanceGains, completionHandler handler: ((CMTime) -> Void)? = nil)
  @available(iOS 8.0, *)
  func setWhiteBalanceModeLocked(with whiteBalanceGains: AVCaptureDevice.WhiteBalanceGains) async -> CMTime
  @available(iOS 8.0, *)
  func chromaticityValues(for whiteBalanceGains: AVCaptureDevice.WhiteBalanceGains) -> AVCaptureDevice.WhiteBalanceChromaticityValues
  @available(iOS 8.0, *)
  func deviceWhiteBalanceGains(for chromaticityValues: AVCaptureDevice.WhiteBalanceChromaticityValues) -> AVCaptureDevice.WhiteBalanceGains
  @available(iOS 8.0, *)
  func temperatureAndTintValues(for whiteBalanceGains: AVCaptureDevice.WhiteBalanceGains) -> AVCaptureDevice.WhiteBalanceTemperatureAndTintValues
  @available(iOS 8.0, *)
  func deviceWhiteBalanceGains(for tempAndTintValues: AVCaptureDevice.WhiteBalanceTemperatureAndTintValues) -> AVCaptureDevice.WhiteBalanceGains
}
extension AVCaptureDevice {
  @available(iOS 5.0, *)
  var isSubjectAreaChangeMonitoringEnabled: Bool
}
extension AVCaptureDevice {
  @available(iOS 6.0, *)
  var isLowLightBoostSupported: Bool { get }
  @available(iOS 6.0, *)
  var isLowLightBoostEnabled: Bool { get }
  @available(iOS 6.0, *)
  var automaticallyEnablesLowLightBoostWhenAvailable: Bool
}
extension AVCaptureDevice {
  @available(iOS 7.0, *)
  var videoZoomFactor: CGFloat
  @available(iOS 7.0, *)
  func ramp(toVideoZoomFactor factor: CGFloat, withRate rate: Float)
  @available(iOS 7.0, *)
  var isRampingVideoZoom: Bool { get }
  @available(iOS 7.0, *)
  func cancelVideoZoomRamp()
  @available(iOS, introduced: 11.0, deprecated: 13.0)
  var dualCameraSwitchOverVideoZoomFactor: CGFloat { get }
}
@available(iOS 7.0, *)
enum AVAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case authorized
}
extension AVCaptureDevice {
  @available(iOS 7.0, *)
  class func authorizationStatus(for mediaType: AVMediaType) -> AVAuthorizationStatus
  @available(iOS 7.0, *)
  class func requestAccess(for mediaType: AVMediaType, completionHandler handler: @escaping (Bool) -> Void)
  @available(iOS 7.0, *)
  class func requestAccess(for mediaType: AVMediaType) async -> Bool
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
  @available(iOS 8.0, *)
  var automaticallyAdjustsVideoHDREnabled: Bool
  @available(iOS 8.0, *)
  var isVideoHDREnabled: Bool
}
@available(iOS 10.0, *)
enum AVCaptureColorSpace : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case sRGB
  case P3_D65
  @available(iOS 14.1, *)
  case HLG_BT2020
}
extension AVCaptureDevice {
  @available(iOS 10.0, *)
  var activeColorSpace: AVCaptureColorSpace
}
extension AVCaptureDevice {
  @available(iOS 11.0, *)
  var activeDepthDataFormat: AVCaptureDevice.Format?
  @available(iOS 12.0, *)
  var activeDepthDataMinFrameDuration: CMTime
  @available(iOS 11.0, *)
  var minAvailableVideoZoomFactor: CGFloat { get }
  @available(iOS 11.0, *)
  var maxAvailableVideoZoomFactor: CGFloat { get }
}
extension AVCaptureDevice {
  @available(iOS 13.0, *)
  var isGeometricDistortionCorrectionSupported: Bool { get }
  @available(iOS 13.0, *)
  var isGeometricDistortionCorrectionEnabled: Bool
}
extension AVCaptureDevice {
  @available(iOS 13.0, *)
  class func extrinsicMatrix(from fromDevice: AVCaptureDevice, to toDevice: AVCaptureDevice) -> Data?
}
@available(iOS 7.0, *)
class AVFrameRateRange : NSObject {
  var minFrameRate: Float64 { get }
  var maxFrameRate: Float64 { get }
  var maxFrameDuration: CMTime { get }
  var minFrameDuration: CMTime { get }
}
@available(iOS 8.0, *)
enum AVCaptureVideoStabilizationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case off
  case standard
  case cinematic
  @available(iOS 13.0, *)
  case cinematicExtended
  case auto
}
extension AVCaptureDevice.Format {
  @available(iOS 8.0, *)
  enum AutoFocusSystem : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case contrastDetection
    case phaseDetection
  }
}
extension AVCaptureDevice.Format {
  @available(iOS 12.0, *)
  var isPortraitEffectsMatteStillImageDeliverySupported: Bool { get }
}
extension AVCaptureDevice.Format {
  @available(iOS 13.0, *)
  var isMultiCamSupported: Bool { get }
}
extension AVCaptureDevice.Format {
  @available(iOS 13.0, *)
  var geometricDistortionCorrectedVideoFieldOfView: Float { get }
}
