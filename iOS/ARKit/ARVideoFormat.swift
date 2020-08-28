
extension ARConfiguration {
  @available(iOS 11.3, *)
  class VideoFormat : NSObject, NSCopying {
    @available(iOS 13.0, *)
    var captureDevicePosition: AVCaptureDevice.Position { get }
    var imageResolution: CGSize { get }
    var framesPerSecond: Int { get }
  }
}
