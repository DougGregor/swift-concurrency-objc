
@available(iOS 4.0, *)
class AVCaptureOutput : NSObject {
  var connections: [AVCaptureConnection] { get }
  @available(iOS 5.0, *)
  func connection(with mediaType: AVMediaType) -> AVCaptureConnection?
  @available(iOS 6.0, *)
  func transformedMetadataObject(for metadataObject: AVMetadataObject, connection: AVCaptureConnection) -> AVMetadataObject?
  @available(iOS 7.0, *)
  func metadataOutputRectConverted(fromOutputRect rectInOutputCoordinates: CGRect) -> CGRect
  @available(iOS 7.0, *)
  func outputRectConverted(fromMetadataOutputRect rectInMetadataOutputCoordinates: CGRect) -> CGRect
}
extension AVCaptureOutput {
  @available(iOS 11.0, *)
  enum DataDroppedReason : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case lateData
    case outOfBuffers
    case discontinuity
  }
}
