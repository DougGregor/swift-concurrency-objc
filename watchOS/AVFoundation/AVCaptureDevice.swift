
extension NSNotification.Name {
}
extension AVCaptureDevice {
  @available(watchOS 2.0, *)
  class let currentLensPosition: Float
}
extension AVCaptureDevice {
  var position: AVCaptureDevice.Position { get }
}
extension AVCaptureDevice.DeviceType {
}
extension AVCaptureDevice {
  @available(watchOS 3.0, *)
  var deviceType: AVCaptureDevice.DeviceType { get }
  @available(watchOS 3.0, *)
  class func `default`(_ deviceType: AVCaptureDevice.DeviceType, for mediaType: AVMediaType?, position: AVCaptureDevice.Position) -> AVCaptureDevice?
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
  var hasFlash: Bool { get }
  @available(watchOS 2.0, *)
  var isFlashAvailable: Bool { get }
  @available(watchOS, introduced: 2.0, deprecated: 3.0, message: "Use AVCapturePhotoOutput's -isFlashScene instead.")
  var isFlashActive: Bool { get }
  @available(watchOS, introduced: 2.0, deprecated: 3.0, message: "Use AVCapturePhotoOutput's -supportedFlashModes instead.")
  func isFlashModeSupported(_ flashMode: AVCaptureDevice.FlashMode) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 3.0, message: "Use AVCapturePhotoSettings.flashMode instead.")
  var flashMode: AVCaptureDevice.FlashMode
}
extension AVCaptureDevice {
  var hasTorch: Bool { get }
  @available(watchOS 2.0, *)
  var isTorchAvailable: Bool { get }
  @available(watchOS 2.0, *)
  var isTorchActive: Bool { get }
  @available(watchOS 2.0, *)
  var torchLevel: Float { get }
  func isTorchModeSupported(_ torchMode: AVCaptureDevice.TorchMode) -> Bool
  var torchMode: AVCaptureDevice.TorchMode
  @available(watchOS 2.0, *)
  func setTorchModeOn(level torchLevel: Float) throws
}
extension AVCaptureDevice {
  func isFocusModeSupported(_ focusMode: AVCaptureDevice.FocusMode) -> Bool
  @available(watchOS 3.0, *)
  var isLockingFocusWithCustomLensPositionSupported: Bool { get }
  var focusMode: AVCaptureDevice.FocusMode
  var isFocusPointOfInterestSupported: Bool { get }
  var focusPointOfInterest: CGPoint
  var isAdjustingFocus: Bool { get }
  @available(watchOS 2.0, *)
  var isAutoFocusRangeRestrictionSupported: Bool { get }
  @available(watchOS 2.0, *)
  var autoFocusRangeRestriction: AVCaptureDevice.AutoFocusRangeRestriction
  @available(watchOS 2.0, *)
  var isSmoothAutoFocusSupported: Bool { get }
  @available(watchOS 2.0, *)
  var isSmoothAutoFocusEnabled: Bool
  @available(watchOS 2.0, *)
  var lensPosition: Float { get }
  @available(watchOS 2.0, *)
  func setFocusModeLocked(lensPosition: Float, completionHandler handler: ((CMTime) -> Void)? = nil)
}
extension AVCaptureDevice {
  func isExposureModeSupported(_ exposureMode: AVCaptureDevice.ExposureMode) -> Bool
  var exposureMode: AVCaptureDevice.ExposureMode
  var isExposurePointOfInterestSupported: Bool { get }
  var exposurePointOfInterest: CGPoint
  var isAdjustingExposure: Bool { get }
  @available(watchOS 2.0, *)
  var lensAperture: Float { get }
  @available(watchOS 2.0, *)
  var exposureDuration: CMTime { get }
  @available(watchOS 2.0, *)
  var iso: Float { get }
  @available(watchOS 2.0, *)
  func setExposureModeCustom(duration: CMTime, iso ISO: Float, completionHandler handler: ((CMTime) -> Void)? = nil)
  @available(watchOS 2.0, *)
  var exposureTargetOffset: Float { get }
  @available(watchOS 2.0, *)
  var exposureTargetBias: Float { get }
  @available(watchOS 2.0, *)
  var minExposureTargetBias: Float { get }
  @available(watchOS 2.0, *)
  var maxExposureTargetBias: Float { get }
  @available(watchOS 2.0, *)
  func setExposureTargetBias(_ bias: Float, completionHandler handler: ((CMTime) -> Void)? = nil)
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
  func isWhiteBalanceModeSupported(_ whiteBalanceMode: AVCaptureDevice.WhiteBalanceMode) -> Bool
  @available(watchOS 3.0, *)
  var isLockingWhiteBalanceWithCustomDeviceGainsSupported: Bool { get }
  var whiteBalanceMode: AVCaptureDevice.WhiteBalanceMode
  var isAdjustingWhiteBalance: Bool { get }
  @available(watchOS 2.0, *)
  var deviceWhiteBalanceGains: AVCaptureDevice.WhiteBalanceGains { get }
  @available(watchOS 2.0, *)
  var grayWorldDeviceWhiteBalanceGains: AVCaptureDevice.WhiteBalanceGains { get }
  @available(watchOS 2.0, *)
  var maxWhiteBalanceGain: Float { get }
  @available(watchOS 2.0, *)
  func setWhiteBalanceModeLocked(with whiteBalanceGains: AVCaptureDevice.WhiteBalanceGains, completionHandler handler: ((CMTime) -> Void)? = nil)
  @available(watchOS 2.0, *)
  func chromaticityValues(for whiteBalanceGains: AVCaptureDevice.WhiteBalanceGains) -> AVCaptureDevice.WhiteBalanceChromaticityValues
  @available(watchOS 2.0, *)
  func deviceWhiteBalanceGains(for chromaticityValues: AVCaptureDevice.WhiteBalanceChromaticityValues) -> AVCaptureDevice.WhiteBalanceGains
  @available(watchOS 2.0, *)
  func temperatureAndTintValues(for whiteBalanceGains: AVCaptureDevice.WhiteBalanceGains) -> AVCaptureDevice.WhiteBalanceTemperatureAndTintValues
  @available(watchOS 2.0, *)
  func deviceWhiteBalanceGains(for tempAndTintValues: AVCaptureDevice.WhiteBalanceTemperatureAndTintValues) -> AVCaptureDevice.WhiteBalanceGains
}
extension AVCaptureDevice {
  @available(watchOS 2.0, *)
  var isSubjectAreaChangeMonitoringEnabled: Bool
}
extension AVCaptureDevice {
  @available(watchOS 2.0, *)
  var isLowLightBoostSupported: Bool { get }
  @available(watchOS 2.0, *)
  var isLowLightBoostEnabled: Bool { get }
  @available(watchOS 2.0, *)
  var automaticallyEnablesLowLightBoostWhenAvailable: Bool
}
extension AVCaptureDevice {
  @available(watchOS 2.0, *)
  var videoZoomFactor: CGFloat
  @available(watchOS 2.0, *)
  func ramp(toVideoZoomFactor factor: CGFloat, withRate rate: Float)
  @available(watchOS 2.0, *)
  var isRampingVideoZoom: Bool { get }
  @available(watchOS 2.0, *)
  func cancelVideoZoomRamp()
  @available(watchOS, introduced: 4.0, deprecated: 6.0)
  var dualCameraSwitchOverVideoZoomFactor: CGFloat { get }
}
extension AVCaptureDevice {
  @available(watchOS 2.0, *)
  class func authorizationStatus(for mediaType: AVMediaType) -> AVAuthorizationStatus
  @available(watchOS 2.0, *)
  class func requestAccess(for mediaType: AVMediaType, completionHandler handler: @escaping (Bool) -> Void)
}
extension AVCaptureDevice {
}
extension AVCaptureDevice {
  @available(watchOS 2.0, *)
  var automaticallyAdjustsVideoHDREnabled: Bool
  @available(watchOS 2.0, *)
  var isVideoHDREnabled: Bool
}
extension AVCaptureDevice {
  @available(watchOS 3.0, *)
  var activeColorSpace: AVCaptureColorSpace
}
extension AVCaptureDevice {
  @available(watchOS 4.0, *)
  var activeDepthDataFormat: AVCaptureDevice.Format?
  @available(watchOS 5.0, *)
  var activeDepthDataMinFrameDuration: CMTime
  @available(watchOS 4.0, *)
  var minAvailableVideoZoomFactor: CGFloat { get }
  @available(watchOS 4.0, *)
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
