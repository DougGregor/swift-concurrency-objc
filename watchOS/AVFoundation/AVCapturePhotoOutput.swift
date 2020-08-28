
extension AVCapturePhotoOutput {
}
extension AVCapturePhotoOutput {
  @available(watchOS 4.0, *)
  var isDepthDataDeliverySupported: Bool { get }
  @available(watchOS 4.0, *)
  var isDepthDataDeliveryEnabled: Bool
}
extension AVCapturePhoto {
  @available(watchOS 4.0, *)
  func fileDataRepresentation() -> Data?
  @available(watchOS, introduced: 4.0, deprecated: 5.0)
  func fileDataRepresentation(withReplacementMetadata replacementMetadata: [String : Any]?, replacementEmbeddedThumbnailPhotoFormat: [String : Any]?, replacementEmbeddedThumbnailPixelBuffer: CVPixelBuffer?, replacementDepthData: AVDepthData?) -> Data?
  @available(watchOS 4.0, *)
  func cgImageRepresentation() -> Unmanaged<CGImage>?
  @available(watchOS 4.0, *)
  func previewCGImageRepresentation() -> Unmanaged<CGImage>?
}
extension AVCaptureDevice {
}
extension AVCapturePhoto {
  @available(watchOS 4.0, *)
  var bracketSettings: AVCaptureBracketedStillImageSettings? { get }
  @available(watchOS 4.0, *)
  var sequenceCount: Int { get }
  @available(watchOS 4.0, *)
  var lensStabilizationStatus: AVCaptureDevice.LensStabilizationStatus { get }
}
