
@available(macOS 10.7, *)
class AVCaptureOutput : NSObject {
  var connections: [AVCaptureConnection] { get }
  func connection(with mediaType: AVMediaType) -> AVCaptureConnection?
  @available(macOS 10.15, *)
  func transformedMetadataObject(for metadataObject: AVMetadataObject, connection: AVCaptureConnection) -> AVMetadataObject?
  @available(macOS 10.15, *)
  func metadataOutputRectConverted(fromOutputRect rectInOutputCoordinates: CGRect) -> CGRect
  @available(macOS 10.15, *)
  func outputRectConverted(fromMetadataOutputRect rectInMetadataOutputCoordinates: CGRect) -> CGRect
}
extension AVCaptureOutput {
  @available(macOS 10.15, *)
  enum DataDroppedReason : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case lateData
    case outOfBuffers
    case discontinuity
  }
}
