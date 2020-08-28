
@available(iOS 4.0, *)
class AVCaptureInput : NSObject {
  var ports: [AVCaptureInput.Port] { get }
}
extension NSNotification.Name {
  @available(iOS 4.0, *)
  static let AVCaptureInputPortFormatDescriptionDidChange: NSNotification.Name
}
extension AVCaptureInput {
  @available(iOS 4.0, *)
  class Port : NSObject {
    var input: AVCaptureInput { get }
    var mediaType: AVMediaType { get }
    var formatDescription: CMFormatDescription? { get }
    var isEnabled: Bool
    @available(iOS 7.0, *)
    var clock: CMClock? { get }
    @available(iOS 13.0, *)
    var sourceDeviceType: AVCaptureDevice.DeviceType? { get }
    @available(iOS 13.0, *)
    var sourceDevicePosition: AVCaptureDevice.Position { get }
  }
}
@available(iOS 4.0, *)
class AVCaptureDeviceInput : AVCaptureInput {
  init(device: AVCaptureDevice) throws
  var device: AVCaptureDevice { get }
  @available(iOS 12.0, *)
  var unifiedAutoExposureDefaultsEnabled: Bool
  @available(iOS 13.0, *)
  func ports(for mediaType: AVMediaType?, sourceDeviceType: AVCaptureDevice.DeviceType?, sourceDevicePosition: AVCaptureDevice.Position) -> [AVCaptureInput.Port]
  @available(iOS 13.0, *)
  var videoMinFrameDurationOverride: CMTime
}
@available(iOS 9.0, *)
class AVCaptureMetadataInput : AVCaptureInput {
  init(formatDescription desc: CMMetadataFormatDescription, clock: CMClock)
  func append(_ metadata: AVTimedMetadataGroup) throws
}
