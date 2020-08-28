
@available(iOS 4.0, *)
class AVCaptureVideoPreviewLayer : CALayer {
  init(session: AVCaptureSession)
  @available(iOS 8.0, *)
  init(sessionWithNoConnection session: AVCaptureSession)
  var session: AVCaptureSession?
  @available(iOS 8.0, *)
  func setSessionWithNoConnection(_ session: AVCaptureSession)
  @available(iOS 6.0, *)
  var connection: AVCaptureConnection? { get }
  var videoGravity: AVLayerVideoGravity
  @available(iOS 13.0, *)
  var isPreviewing: Bool { get }
  @available(iOS 6.0, *)
  func captureDevicePointConverted(fromLayerPoint pointInLayer: CGPoint) -> CGPoint
  @available(iOS 6.0, *)
  func layerPointConverted(fromCaptureDevicePoint captureDevicePointOfInterest: CGPoint) -> CGPoint
  @available(iOS 7.0, *)
  func metadataOutputRectConverted(fromLayerRect rectInLayerCoordinates: CGRect) -> CGRect
  @available(iOS 7.0, *)
  func layerRectConverted(fromMetadataOutputRect rectInMetadataOutputCoordinates: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func transformedMetadataObject(for metadataObject: AVMetadataObject) -> AVMetadataObject?
}
