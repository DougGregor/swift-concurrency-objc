
@available(macOS 10.7, *)
class AVCaptureInput : NSObject {
  var ports: [AVCaptureInput.Port] { get }
}
extension NSNotification.Name {
  @available(macOS 10.7, *)
  static let AVCaptureInputPortFormatDescriptionDidChange: NSNotification.Name
}
extension AVCaptureInput {
  @available(macOS 10.7, *)
  class Port : NSObject {
    var input: AVCaptureInput { get }
    var mediaType: AVMediaType { get }
    var formatDescription: CMFormatDescription? { get }
    var isEnabled: Bool
    @available(macOS 10.9, *)
    var clock: CMClock? { get }
  }
}
@available(macOS 10.7, *)
class AVCaptureDeviceInput : AVCaptureInput {
  init(device: AVCaptureDevice) throws
  var device: AVCaptureDevice { get }
}
@available(macOS 10.7, *)
class AVCaptureScreenInput : AVCaptureInput {
  init?(displayID: CGDirectDisplayID)
  var minFrameDuration: CMTime
  var cropRect: CGRect
  var scaleFactor: CGFloat
  var capturesMouseClicks: Bool
  @available(macOS 10.8, *)
  var capturesCursor: Bool
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "No longer supported.")
  var removesDuplicateFrames: Bool
}
