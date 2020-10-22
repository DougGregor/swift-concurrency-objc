
extension AVCaptureStillImageOutput {
  @available(tvOS, introduced: 8.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput maxBracketedCapturePhotoCount instead.")
  var maxBracketedCaptureStillImageCount: Int { get }
  @available(tvOS, introduced: 9.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput lensStabilizationDuringBracketedCaptureSupported instead.")
  var isLensStabilizationDuringBracketedCaptureSupported: Bool { get }
  @available(tvOS, introduced: 9.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput with AVCapturePhotoBracketSettings instead.")
  var isLensStabilizationDuringBracketedCaptureEnabled: Bool
  @available(tvOS, introduced: 8.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput setPreparedPhotoSettingsArray:completionHandler: instead.")
  func prepareToCaptureStillImageBracket(from connection: AVCaptureConnection, withSettingsArray settings: [AVCaptureBracketedStillImageSettings], completionHandler handler: @escaping (Bool, Error?) -> Void)
  @available(tvOS, introduced: 8.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput setPreparedPhotoSettingsArray:completionHandler: instead.")
  func prepareToCaptureStillImageBracket(from connection: AVCaptureConnection, withSettingsArray settings: [AVCaptureBracketedStillImageSettings]) async throws -> Bool
  @available(tvOS, introduced: 8.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput capturePhotoWithSettings:delegate: instead.")
  func captureStillImageBracketAsynchronously(from connection: AVCaptureConnection, withSettingsArray settings: [AVCaptureBracketedStillImageSettings], completionHandler handler: @escaping (CMSampleBuffer?, AVCaptureBracketedStillImageSettings?, Error?) -> Void)
  @available(tvOS, introduced: 8.0, deprecated: 10.0, message: "Use AVCapturePhotoOutput capturePhotoWithSettings:delegate: instead.")
  func captureStillImageBracket(from connection: AVCaptureConnection, withSettingsArray settings: [AVCaptureBracketedStillImageSettings]) async throws -> (CMSampleBuffer?, AVCaptureBracketedStillImageSettings?)
}
