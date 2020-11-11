
extension NSNotification.Name {
}
extension AVCaptureDevice {
  @available(tvOS 8.0, *)
  class let currentLensPosition: Float
}
extension AVCaptureDevice {
  var position: AVCaptureDevice.Position { get }
}
extension AVCaptureDevice.DeviceType {
}
extension AVCaptureDevice {
  @available(tvOS 10.0, *)
  var deviceType: AVCaptureDevice.DeviceType { get }
  @available(tvOS 10.0, *)
  class func `default`(_ deviceType: AVCaptureDevice.DeviceType, for mediaType: AVMediaType?, position: AVCaptureDevice.Position) -> AVCaptureDevice?
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
  var hasFlash: Bool { get }
  @available(tvOS 5.0, *)
  var isFlashAvailable: Bool { get }
  @available(tvOS, introduced: 5.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput's -isFlashScene instead.")
  var isFlashActive: Bool { get }
  @available(tvOS, introduced: 4.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput's -supportedFlashModes instead.")
  func isFlashModeSupported(_ flashMode: AVCaptureDevice.FlashMode) -> Bool
  @available(tvOS, introduced: 4.0, deprecated: 10.0, message: "Use AVCapturePhotoSettings.flashMode instead.")
  var flashMode: AVCaptureDevice.FlashMode
}
extension AVCaptureDevice {
  var hasTorch: Bool { get }
  @available(tvOS 5.0, *)
  var isTorchAvailable: Bool { get }
  @available(tvOS 6.0, *)
  var isTorchActive: Bool { get }
  @available(tvOS 5.0, *)
  var torchLevel: Float { get }
  func isTorchModeSupported(_ torchMode: AVCaptureDevice.TorchMode) -> Bool
  var torchMode: AVCaptureDevice.TorchMode
  @available(tvOS 6.0, *)
  func setTorchModeOn(level torchLevel: Float) throws
}
extension AVCaptureDevice {
  func isFocusModeSupported(_ focusMode: AVCaptureDevice.FocusMode) -> Bool
  @available(tvOS 10.0, *)
  var isLockingFocusWithCustomLensPositionSupported: Bool { get }
  var focusMode: AVCaptureDevice.FocusMode
  var isFocusPointOfInterestSupported: Bool { get }
  var focusPointOfInterest: CGPoint
  var isAdjustingFocus: Bool { get }
  @available(tvOS 7.0, *)
  var isAutoFocusRangeRestrictionSupported: Bool { get }
  @available(tvOS 7.0, *)
  var autoFocusRangeRestriction: AVCaptureDevice.AutoFocusRangeRestriction
  @available(tvOS 7.0, *)
  var isSmoothAutoFocusSupported: Bool { get }
  @available(tvOS 7.0, *)
  var isSmoothAutoFocusEnabled: Bool
  @available(tvOS 8.0, *)
  var lensPosition: Float { get }
  @available(tvOS 8.0, *)
  func setFocusModeLocked(lensPosition: Float, completionHandler handler: ((CMTime) -> Void)? = nil)
  @available(tvOS 8.0, *)
  func setFocusModeLocked(lensPosition: Float) async -> CMTime
}
extension AVCaptureDevice {
  func isExposureModeSupported(_ exposureMode: AVCaptureDevice.ExposureMode) -> Bool
  var exposureMode: AVCaptureDevice.ExposureMode
  var isExposurePointOfInterestSupported: Bool { get }
  var exposurePointOfInterest: CGPoint
  var isAdjustingExposure: Bool { get }
  @available(tvOS 8.0, *)
  var lensAperture: Float { get }
  @available(tvOS 8.0, *)
  var exposureDuration: CMTime { get }
  @available(tvOS 8.0, *)
  var iso: Float { get }
  @available(tvOS 8.0, *)
  func setExposureModeCustom(duration: CMTime, iso ISO: Float, completionHandler handler: ((CMTime) -> Void)? = nil)
  @available(tvOS 8.0, *)
  func setExposureModeCustom(duration: CMTime, iso ISO: Float) async -> CMTime
  @available(tvOS 8.0, *)
  var exposureTargetOffset: Float { get }
  @available(tvOS 8.0, *)
  var exposureTargetBias: Float { get }
  @available(tvOS 8.0, *)
  var minExposureTargetBias: Float { get }
  @available(tvOS 8.0, *)
  var maxExposureTargetBias: Float { get }
  @available(tvOS 8.0, *)
  func setExposureTargetBias(_ bias: Float, completionHandler handler: ((CMTime) -> Void)? = nil)
  @available(tvOS 8.0, *)
  func setExposureTargetBiasAsync(_ bias: Float) async -> CMTime
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
  func isWhiteBalanceModeSupported(_ whiteBalanceMode: AVCaptureDevice.WhiteBalanceMode) -> Bool
  @available(tvOS 10.0, *)
  var isLockingWhiteBalanceWithCustomDeviceGainsSupported: Bool { get }
  var whiteBalanceMode: AVCaptureDevice.WhiteBalanceMode
  var isAdjustingWhiteBalance: Bool { get }
  @available(tvOS 8.0, *)
  var deviceWhiteBalanceGains: AVCaptureDevice.WhiteBalanceGains { get }
  @available(tvOS 8.0, *)
  var grayWorldDeviceWhiteBalanceGains: AVCaptureDevice.WhiteBalanceGains { get }
  @available(tvOS 8.0, *)
  var maxWhiteBalanceGain: Float { get }
  @available(tvOS 8.0, *)
  func setWhiteBalanceModeLocked(with whiteBalanceGains: AVCaptureDevice.WhiteBalanceGains, completionHandler handler: ((CMTime) -> Void)? = nil)
  @available(tvOS 8.0, *)
  func setWhiteBalanceModeLocked(with whiteBalanceGains: AVCaptureDevice.WhiteBalanceGains) async -> CMTime
  @available(tvOS 8.0, *)
  func chromaticityValues(for whiteBalanceGains: AVCaptureDevice.WhiteBalanceGains) -> AVCaptureDevice.WhiteBalanceChromaticityValues
  @available(tvOS 8.0, *)
  func deviceWhiteBalanceGains(for chromaticityValues: AVCaptureDevice.WhiteBalanceChromaticityValues) -> AVCaptureDevice.WhiteBalanceGains
  @available(tvOS 8.0, *)
  func temperatureAndTintValues(for whiteBalanceGains: AVCaptureDevice.WhiteBalanceGains) -> AVCaptureDevice.WhiteBalanceTemperatureAndTintValues
  @available(tvOS 8.0, *)
  func deviceWhiteBalanceGains(for tempAndTintValues: AVCaptureDevice.WhiteBalanceTemperatureAndTintValues) -> AVCaptureDevice.WhiteBalanceGains
}
extension AVCaptureDevice {
  @available(tvOS 5.0, *)
  var isSubjectAreaChangeMonitoringEnabled: Bool
}
extension AVCaptureDevice {
  @available(tvOS 6.0, *)
  var isLowLightBoostSupported: Bool { get }
  @available(tvOS 6.0, *)
  var isLowLightBoostEnabled: Bool { get }
  @available(tvOS 6.0, *)
  var automaticallyEnablesLowLightBoostWhenAvailable: Bool
}
extension AVCaptureDevice {
  @available(tvOS 7.0, *)
  var videoZoomFactor: CGFloat
  @available(tvOS 7.0, *)
  func ramp(toVideoZoomFactor factor: CGFloat, withRate rate: Float)
  @available(tvOS 7.0, *)
  var isRampingVideoZoom: Bool { get }
  @available(tvOS 7.0, *)
  func cancelVideoZoomRamp()
  @available(tvOS, introduced: 11.0, deprecated: 13.0)
  var dualCameraSwitchOverVideoZoomFactor: CGFloat { get }
}
extension AVCaptureDevice {
  @available(tvOS 7.0, *)
  class func authorizationStatus(for mediaType: AVMediaType) -> AVAuthorizationStatus
  @available(tvOS 7.0, *)
  class func requestAccess(for mediaType: AVMediaType, completionHandler handler: @escaping (Bool) -> Void)
  @available(tvOS 7.0, *)
  class func requestAccess(for mediaType: AVMediaType) async -> Bool
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
  @available(tvOS 8.0, *)
  var automaticallyAdjustsVideoHDREnabled: Bool
  @available(tvOS 8.0, *)
  var isVideoHDREnabled: Bool
}
extension AVCaptureDevice {
  @available(tvOS 10.0, *)
  var activeColorSpace: AVCaptureColorSpace
}
extension AVCaptureDevice {
  @available(tvOS 11.0, *)
  var activeDepthDataFormat: AVCaptureDevice.Format?
  @available(tvOS 12.0, *)
  var activeDepthDataMinFrameDuration: CMTime
  @available(tvOS 11.0, *)
  var minAvailableVideoZoomFactor: CGFloat { get }
  @available(tvOS 11.0, *)
  var maxAvailableVideoZoomFactor: CGFloat { get }
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
extension AVCaptureDevice.Format {
}
extension AVCaptureDevice.Format {
}
extension AVCaptureDevice.Format {
}
extension AVCaptureDevice.Format {
}
