
extension AVCapturePhotoOutput {
}
extension AVCapturePhotoOutput {
  @available(tvOS 11.0, *)
  var isDepthDataDeliverySupported: Bool { get }
  @available(tvOS 11.0, *)
  var isDepthDataDeliveryEnabled: Bool
}
extension AVCapturePhoto {
  @available(tvOS 11.0, *)
  func fileDataRepresentation() -> Data?
  @available(tvOS, introduced: 11.0, deprecated: 12.0)
  func fileDataRepresentation(withReplacementMetadata replacementMetadata: [String : Any]?, replacementEmbeddedThumbnailPhotoFormat: [String : Any]?, replacementEmbeddedThumbnailPixelBuffer: CVPixelBuffer?, replacementDepthData: AVDepthData?) -> Data?
  @available(tvOS 11.0, *)
  func cgImageRepresentation() -> Unmanaged<CGImage>?
  @available(tvOS 11.0, *)
  func previewCGImageRepresentation() -> Unmanaged<CGImage>?
}
extension AVCaptureDevice {
}
extension AVCapturePhoto {
  @available(tvOS 11.0, *)
  var bracketSettings: AVCaptureBracketedStillImageSettings? { get }
  @available(tvOS 11.0, *)
  var sequenceCount: Int { get }
  @available(tvOS 11.0, *)
  var lensStabilizationStatus: AVCaptureDevice.LensStabilizationStatus { get }
}
