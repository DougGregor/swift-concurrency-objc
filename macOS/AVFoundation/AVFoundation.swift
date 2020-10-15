
@available(watchOS 6.0, *)
extension AVError {
  @available(swift 4.2)
  var device: AVCaptureDevice? { get }
  @available(watchOS 6.0, *)
  var time: CMTime? { get }
  @available(watchOS 6.0, *)
  var fileSize: Int64? { get }
  @available(watchOS 6.0, *)
  var processID: Int? { get }
  @available(watchOS 6.0, *)
  var recordingSuccessfullyFinished: Bool? { get }
  @available(swift 4.2)
  @available(watchOS 6.0, *)
  var mediaType: AVMediaType? { get }
  @available(watchOS 6.0, *)
  var mediaSubtypes: [Int]? { get }
  @available(swift 4.2)
  @available(macOS 10.10, iOS 8.0, tvOS 9.0, watchOS 6.0, *)
  var presentationTimeStamp: CMTime? { get }
  @available(swift 4.2)
  @available(macOS 10.10, iOS 8.0, tvOS 9.0, watchOS 6.0, *)
  var persistentTrackID: CMPersistentTrackID? { get }
  @available(swift 4.2)
  @available(macOS 10.10, iOS 8.0, tvOS 9.0, watchOS 6.0, *)
  var fileType: AVFileType? { get }
}

@available(macOS 11.0, iOS 7.0, macCatalyst 14.0, *)
extension AVMetadataMachineReadableCodeObject {
  @nonobjc var corners: [CGPoint] { get }
}

@available(macOS 11.0, iOS 10.0, macCatalyst 14.0, *)
extension AVCapturePhotoOutput {
  @nonobjc var supportedFlashModes: [AVCaptureDevice.FlashMode] { get }
  @nonobjc var availablePhotoPixelFormatTypes: [OSType] { get }
  @nonobjc var availableRawPhotoPixelFormatTypes: [OSType] { get }
}

@available(macOS 11.0, iOS 10.0, macCatalyst 14.0, *)
extension AVCapturePhotoSettings {
  @nonobjc var availablePreviewPhotoPixelFormatTypes: [OSType] { get }
}

@available(watchOS 6.0, *)
extension CMTime : _ObjectiveCBridgeable {
}

@available(watchOS 6.0, *)
extension CMTimeRange : _ObjectiveCBridgeable {
}

@available(watchOS 6.0, *)
extension CMTimeMapping : _ObjectiveCBridgeable {
}

@available(macOS 10.7, iOS 5.0, *)
extension AVCaptureVideoDataOutput {
  @nonobjc var availableVideoPixelFormatTypes: [OSType] { get }
}

@available(macOS 11.0, iOS 10.0, macCatalyst 14.0, *)
extension AVCaptureDevice.Format {
  @nonobjc var supportedColorSpaces: [AVCaptureColorSpace] { get }
}

