
@available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput instead.")
class AVCaptureStillImageOutput : AVCaptureOutput {
  var outputSettings: [String : Any]
  var availableImageDataCVPixelFormatTypes: [NSNumber] { get }
  var availableImageDataCodecTypes: [AVVideoCodecType] { get }
  @available(iOS 7.0, *)
  var isStillImageStabilizationSupported: Bool { get }
  @available(iOS 7.0, *)
  var automaticallyEnablesStillImageStabilizationWhenAvailable: Bool
  @available(iOS 7.0, *)
  var isStillImageStabilizationActive: Bool { get }
  @available(iOS 8.0, *)
  var isHighResolutionStillImageOutputEnabled: Bool
  @available(iOS 5.0, *)
  var isCapturingStillImage: Bool { get }
  func captureStillImageAsynchronously(from connection: AVCaptureConnection, completionHandler handler: @escaping (CMSampleBuffer?, Error?) -> Void)
  func captureStillImage(from connection: AVCaptureConnection) async throws -> CMSampleBuffer
  class func jpegStillImageNSDataRepresentation(_ jpegSampleBuffer: CMSampleBuffer) -> Data?
}
@available(iOS 8.0, *)
class AVCaptureBracketedStillImageSettings : NSObject {
}
@available(iOS 8.0, *)
class AVCaptureManualExposureBracketedStillImageSettings : AVCaptureBracketedStillImageSettings {
  class func manualExposureSettings(exposureDuration duration: CMTime, iso ISO: Float) -> Self
  var exposureDuration: CMTime { get }
  var iso: Float { get }
}
@available(iOS 8.0, *)
class AVCaptureAutoExposureBracketedStillImageSettings : AVCaptureBracketedStillImageSettings {
  class func autoExposureSettings(exposureTargetBias: Float) -> Self
  var exposureTargetBias: Float { get }
}
extension AVCaptureStillImageOutput {
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput maxBracketedCapturePhotoCount instead.")
  var maxBracketedCaptureStillImageCount: Int { get }
  @available(iOS, introduced: 9.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput lensStabilizationDuringBracketedCaptureSupported instead.")
  var isLensStabilizationDuringBracketedCaptureSupported: Bool { get }
  @available(iOS, introduced: 9.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput with AVCapturePhotoBracketSettings instead.")
  var isLensStabilizationDuringBracketedCaptureEnabled: Bool
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput setPreparedPhotoSettingsArray:completionHandler: instead.")
  func prepareToCaptureStillImageBracket(from connection: AVCaptureConnection, withSettingsArray settings: [AVCaptureBracketedStillImageSettings], completionHandler handler: @escaping (Bool, Error?) -> Void)
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput setPreparedPhotoSettingsArray:completionHandler: instead.")
  func prepareToCaptureStillImageBracket(from connection: AVCaptureConnection, withSettingsArray settings: [AVCaptureBracketedStillImageSettings]) async throws -> Bool
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput capturePhotoWithSettings:delegate: instead.")
  func captureStillImageBracketAsynchronously(from connection: AVCaptureConnection, withSettingsArray settings: [AVCaptureBracketedStillImageSettings], completionHandler handler: @escaping (CMSampleBuffer?, AVCaptureBracketedStillImageSettings?, Error?) -> Void)
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput capturePhotoWithSettings:delegate: instead.")
  func captureStillImageBracket(from connection: AVCaptureConnection, withSettingsArray settings: [AVCaptureBracketedStillImageSettings]) async throws -> (CMSampleBuffer, AVCaptureBracketedStillImageSettings)
}
