
extension AVCaptureStillImageOutput {
  @available(watchOS, introduced: 2.0, deprecated: 3.0, message: "Use AVCapturePhotoOutput maxBracketedCapturePhotoCount instead.")
  var maxBracketedCaptureStillImageCount: Int { get }
  @available(watchOS, introduced: 2.0, deprecated: 3.0, message: "Use AVCapturePhotoOutput lensStabilizationDuringBracketedCaptureSupported instead.")
  var isLensStabilizationDuringBracketedCaptureSupported: Bool { get }
  @available(watchOS, introduced: 2.0, deprecated: 3.0, message: "Use AVCapturePhotoOutput with AVCapturePhotoBracketSettings instead.")
  var isLensStabilizationDuringBracketedCaptureEnabled: Bool
  @available(watchOS, introduced: 2.0, deprecated: 3.0, message: "Use AVCapturePhotoOutput setPreparedPhotoSettingsArray:completionHandler: instead.")
  func prepareToCaptureStillImageBracket(from connection: AVCaptureConnection, withSettingsArray settings: [AVCaptureBracketedStillImageSettings], completionHandler handler: @escaping (Bool, Error?) -> Void)
  @available(watchOS, introduced: 2.0, deprecated: 3.0, message: "Use AVCapturePhotoOutput capturePhotoWithSettings:delegate: instead.")
  func captureStillImageBracketAsynchronously(from connection: AVCaptureConnection, withSettingsArray settings: [AVCaptureBracketedStillImageSettings], completionHandler handler: @escaping (CMSampleBuffer?, AVCaptureBracketedStillImageSettings?, Error?) -> Void)
}
