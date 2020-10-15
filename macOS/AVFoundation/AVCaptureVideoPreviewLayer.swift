
@available(macOS 10.7, *)
class AVCaptureVideoPreviewLayer : CALayer {
  init(session: AVCaptureSession)
  init(sessionWithNoConnection session: AVCaptureSession)
  var session: AVCaptureSession?
  func setSessionWithNoConnection(_ session: AVCaptureSession)
  var connection: AVCaptureConnection? { get }
  var videoGravity: AVLayerVideoGravity
  @available(macOS 10.15, *)
  func captureDevicePointConverted(fromLayerPoint pointInLayer: CGPoint) -> CGPoint
  @available(macOS 10.15, *)
  func layerPointConverted(fromCaptureDevicePoint captureDevicePointOfInterest: CGPoint) -> CGPoint
  @available(macOS 10.15, *)
  func metadataOutputRectConverted(fromLayerRect rectInLayerCoordinates: CGRect) -> CGRect
  @available(macOS 10.15, *)
  func layerRectConverted(fromMetadataOutputRect rectInMetadataOutputCoordinates: CGRect) -> CGRect
  @available(macOS 10.15, *)
  func transformedMetadataObject(for metadataObject: AVMetadataObject) -> AVMetadataObject?
}
