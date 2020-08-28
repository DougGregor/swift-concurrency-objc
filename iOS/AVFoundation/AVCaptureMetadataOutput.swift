
@available(iOS 6.0, *)
class AVCaptureMetadataOutput : AVCaptureOutput {
  func setMetadataObjectsDelegate(_ objectsDelegate: AVCaptureMetadataOutputObjectsDelegate?, queue objectsCallbackQueue: DispatchQueue?)
  var metadataObjectsDelegate: AVCaptureMetadataOutputObjectsDelegate? { get }
  var metadataObjectsCallbackQueue: DispatchQueue? { get }
  var availableMetadataObjectTypes: [AVMetadataObject.ObjectType] { get }
  var metadataObjectTypes: [AVMetadataObject.ObjectType]!
  @available(iOS 7.0, *)
  var rectOfInterest: CGRect
}
@available(iOS 6.0, *)
protocol AVCaptureMetadataOutputObjectsDelegate : NSObjectProtocol {
  optional func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection)
}
