
@available(macOS 10.15, *)
class AVCapturePhotoOutput : AVCaptureOutput {
  func capturePhoto(with settings: AVCapturePhotoSettings, delegate: AVCapturePhotoCaptureDelegate)
  var __availablePhotoPixelFormatTypes: [NSNumber] { get }
  var availablePhotoCodecTypes: [AVVideoCodecType] { get }
  var availablePhotoFileTypes: [AVFileType] { get }
  func supportedPhotoPixelFormatTypes(for fileType: AVFileType) -> [NSNumber]
  func supportedPhotoCodecTypes(for fileType: AVFileType) -> [AVVideoCodecType]
}

@available(macOS 11.0, iOS 10.0, macCatalyst 14.0, *)
extension AVCapturePhotoOutput {
  @nonobjc var supportedFlashModes: [AVCaptureDevice.FlashMode] { get }
  @nonobjc var availablePhotoPixelFormatTypes: [OSType] { get }
  @nonobjc var availableRawPhotoPixelFormatTypes: [OSType] { get }
}
extension AVCapturePhotoOutput {
}
extension AVCapturePhotoOutput {
}
@available(macOS 10.15, *)
protocol AVCapturePhotoCaptureDelegate : NSObjectProtocol {
  optional func photoOutput(_ output: AVCapturePhotoOutput, willBeginCaptureFor resolvedSettings: AVCaptureResolvedPhotoSettings)
  optional func photoOutput(_ output: AVCapturePhotoOutput, willCapturePhotoFor resolvedSettings: AVCaptureResolvedPhotoSettings)
  @asyncHandler optional func photoOutput(_ output: AVCapturePhotoOutput, didCapturePhotoFor resolvedSettings: AVCaptureResolvedPhotoSettings)
  @asyncHandler optional func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?)
  @asyncHandler optional func photoOutput(_ output: AVCapturePhotoOutput, didFinishCaptureFor resolvedSettings: AVCaptureResolvedPhotoSettings, error: Error?)
}
@available(macOS 10.15, *)
class AVCapturePhotoSettings : NSObject, NSCopying {
  convenience init(format: [String : Any]?)
  convenience init(from photoSettings: AVCapturePhotoSettings)
  var uniqueID: Int64 { get }
  var format: [String : Any]? { get }
  var processedFileType: AVFileType? { get }
}

@available(macOS 11.0, iOS 10.0, macCatalyst 14.0, *)
extension AVCapturePhotoSettings {
  @nonobjc var availablePreviewPhotoPixelFormatTypes: [OSType] { get }
}
@available(macOS 10.15, *)
class AVCaptureResolvedPhotoSettings : NSObject {
  var uniqueID: Int64 { get }
  var photoDimensions: CMVideoDimensions { get }
  var expectedPhotoCount: Int { get }
}
@available(macOS 10.15, *)
class AVCapturePhoto : NSObject {
  var timestamp: CMTime { get }
  var pixelBuffer: CVPixelBuffer? { get }
  var resolvedSettings: AVCaptureResolvedPhotoSettings { get }
  var photoCount: Int { get }
}
extension AVCapturePhoto {
  func fileDataRepresentation() -> Data?
  func cgImageRepresentation() -> Unmanaged<CGImage>?
}
extension AVCaptureDevice {
}
extension AVCapturePhoto {
}
