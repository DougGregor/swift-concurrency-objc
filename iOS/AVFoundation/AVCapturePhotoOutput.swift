
@available(iOS 10.0, *)
class AVCapturePhotoOutput : AVCaptureOutput {
  func capturePhoto(with settings: AVCapturePhotoSettings, delegate: AVCapturePhotoCaptureDelegate)
  var preparedPhotoSettingsArray: [AVCapturePhotoSettings] { get }
  func setPreparedPhotoSettingsArray(_ preparedPhotoSettingsArray: [AVCapturePhotoSettings], completionHandler: ((Bool, Error?) -> Void)? = nil)
  var __availablePhotoPixelFormatTypes: [NSNumber] { get }
  var availablePhotoCodecTypes: [AVVideoCodecType] { get }
  var __availableRawPhotoPixelFormatTypes: [NSNumber] { get }
  @available(iOS 11.0, *)
  var availablePhotoFileTypes: [AVFileType] { get }
  @available(iOS 11.0, *)
  var availableRawPhotoFileTypes: [AVFileType] { get }
  @available(iOS 11.0, *)
  func supportedPhotoPixelFormatTypes(for fileType: AVFileType) -> [NSNumber]
  @available(iOS 11.0, *)
  func supportedPhotoCodecTypes(for fileType: AVFileType) -> [AVVideoCodecType]
  @available(iOS 11.0, *)
  func supportedRawPhotoPixelFormatTypes(for fileType: AVFileType) -> [NSNumber]
  @available(iOS 13.0, *)
  var maxPhotoQualityPrioritization: AVCapturePhotoOutput.QualityPrioritization
  @available(iOS, introduced: 10.0, deprecated: 13.0)
  var isStillImageStabilizationSupported: Bool { get }
  @available(iOS, introduced: 10.0, deprecated: 13.0)
  var isStillImageStabilizationScene: Bool { get }
  @available(iOS 13.0, *)
  var isVirtualDeviceFusionSupported: Bool { get }
  @available(iOS, introduced: 10.2, deprecated: 13.0)
  var isDualCameraFusionSupported: Bool { get }
  @available(iOS 13.0, *)
  var isVirtualDeviceConstituentPhotoDeliverySupported: Bool { get }
  @available(iOS, introduced: 11.0, deprecated: 13.0)
  var isDualCameraDualPhotoDeliverySupported: Bool { get }
  @available(iOS 13.0, *)
  var isVirtualDeviceConstituentPhotoDeliveryEnabled: Bool
  @available(iOS, introduced: 11.0, deprecated: 13.0)
  var isDualCameraDualPhotoDeliveryEnabled: Bool
  @available(iOS 11.0, *)
  var isCameraCalibrationDataDeliverySupported: Bool { get }
  var __supportedFlashModes: [NSNumber] { get }
  @available(iOS 12.0, *)
  var isAutoRedEyeReductionSupported: Bool { get }
  var isFlashScene: Bool { get }
  @NSCopying var photoSettingsForSceneMonitoring: AVCapturePhotoSettings?
  var isHighResolutionCaptureEnabled: Bool
  var maxBracketedCapturePhotoCount: Int { get }
  var isLensStabilizationDuringBracketedCaptureSupported: Bool { get }
  var isLivePhotoCaptureSupported: Bool { get }
  var isLivePhotoCaptureEnabled: Bool
  var isLivePhotoCaptureSuspended: Bool
  var isLivePhotoAutoTrimmingEnabled: Bool
  @available(iOS 11.0, *)
  var availableLivePhotoVideoCodecTypes: [AVVideoCodecType] { get }
  @available(iOS, introduced: 10.0, deprecated: 11.0)
  class func jpegPhotoDataRepresentation(forJPEGSampleBuffer JPEGSampleBuffer: CMSampleBuffer, previewPhotoSampleBuffer: CMSampleBuffer?) -> Data?
  @available(iOS, introduced: 10.0, deprecated: 11.0)
  class func dngPhotoDataRepresentation(forRawSampleBuffer rawSampleBuffer: CMSampleBuffer, previewPhotoSampleBuffer: CMSampleBuffer?) -> Data?
}

@available(macOS 11.0, iOS 10.0, macCatalyst 14.0, *)
extension AVCapturePhotoOutput {
  @nonobjc var supportedFlashModes: [AVCaptureDevice.FlashMode] { get }
  @nonobjc var availablePhotoPixelFormatTypes: [OSType] { get }
  @nonobjc var availableRawPhotoPixelFormatTypes: [OSType] { get }
}
extension AVCapturePhotoOutput {
  @available(iOS 13.0, *)
  enum QualityPrioritization : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case speed
    case balanced
    case quality
  }
}
extension AVCapturePhotoOutput {
  @available(iOS 11.0, *)
  var isDepthDataDeliverySupported: Bool { get }
  @available(iOS 11.0, *)
  var isDepthDataDeliveryEnabled: Bool
  @available(iOS 12.0, *)
  var isPortraitEffectsMatteDeliverySupported: Bool { get }
  @available(iOS 12.0, *)
  var isPortraitEffectsMatteDeliveryEnabled: Bool
  @available(iOS 13.0, *)
  var availableSemanticSegmentationMatteTypes: [AVSemanticSegmentationMatte.MatteType] { get }
  @available(iOS 13.0, *)
  var enabledSemanticSegmentationMatteTypes: [AVSemanticSegmentationMatte.MatteType]
}
@available(iOS 10.0, *)
protocol AVCapturePhotoCaptureDelegate : NSObjectProtocol {
  optional func photoOutput(_ output: AVCapturePhotoOutput, willBeginCaptureFor resolvedSettings: AVCaptureResolvedPhotoSettings)
  optional func photoOutput(_ output: AVCapturePhotoOutput, willCapturePhotoFor resolvedSettings: AVCaptureResolvedPhotoSettings)
  optional func photoOutput(_ output: AVCapturePhotoOutput, didCapturePhotoFor resolvedSettings: AVCaptureResolvedPhotoSettings)
  @available(iOS 11.0, *)
  optional func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?)
  @available(iOS, introduced: 10.0, deprecated: 11.0)
  optional func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photoSampleBuffer: CMSampleBuffer?, previewPhoto previewPhotoSampleBuffer: CMSampleBuffer?, resolvedSettings: AVCaptureResolvedPhotoSettings, bracketSettings: AVCaptureBracketedStillImageSettings?, error: Error?)
  @available(iOS, introduced: 10.0, deprecated: 11.0)
  optional func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingRawPhoto rawSampleBuffer: CMSampleBuffer?, previewPhoto previewPhotoSampleBuffer: CMSampleBuffer?, resolvedSettings: AVCaptureResolvedPhotoSettings, bracketSettings: AVCaptureBracketedStillImageSettings?, error: Error?)
  optional func photoOutput(_ output: AVCapturePhotoOutput, didFinishRecordingLivePhotoMovieForEventualFileAt outputFileURL: URL, resolvedSettings: AVCaptureResolvedPhotoSettings)
  optional func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingLivePhotoToMovieFileAt outputFileURL: URL, duration: CMTime, photoDisplayTime: CMTime, resolvedSettings: AVCaptureResolvedPhotoSettings, error: Error?)
  optional func photoOutput(_ output: AVCapturePhotoOutput, didFinishCaptureFor resolvedSettings: AVCaptureResolvedPhotoSettings, error: Error?)
}
@available(iOS 10.0, *)
class AVCapturePhotoSettings : NSObject, NSCopying {
  convenience init(format: [String : Any]?)
  convenience init(rawPixelFormatType: OSType)
  convenience init(rawPixelFormatType: OSType, processedFormat: [String : Any]?)
  @available(iOS 11.0, *)
  convenience init(rawPixelFormatType: OSType, rawFileType: AVFileType?, processedFormat: [String : Any]?, processedFileType: AVFileType?)
  convenience init(from photoSettings: AVCapturePhotoSettings)
  var uniqueID: Int64 { get }
  var format: [String : Any]? { get }
  @available(iOS 11.0, *)
  var processedFileType: AVFileType? { get }
  var rawPhotoPixelFormatType: OSType { get }
  @available(iOS 11.0, *)
  var rawFileType: AVFileType? { get }
  var flashMode: AVCaptureDevice.FlashMode
  @available(iOS 12.0, *)
  var isAutoRedEyeReductionEnabled: Bool
  @available(iOS 13.0, *)
  var photoQualityPrioritization: AVCapturePhotoOutput.QualityPrioritization
  @available(iOS, introduced: 10.0, deprecated: 13.0)
  var isAutoStillImageStabilizationEnabled: Bool
  @available(iOS 13.0, *)
  var isAutoVirtualDeviceFusionEnabled: Bool
  @available(iOS, introduced: 10.2, deprecated: 13.0)
  var isAutoDualCameraFusionEnabled: Bool
  @available(iOS 13.0, *)
  var virtualDeviceConstituentPhotoDeliveryEnabledDevices: [AVCaptureDevice]
  @available(iOS, introduced: 11.0, deprecated: 13.0)
  var isDualCameraDualPhotoDeliveryEnabled: Bool
  var isHighResolutionPhotoEnabled: Bool
  @available(iOS 11.0, *)
  var isDepthDataDeliveryEnabled: Bool
  @available(iOS 11.0, *)
  var embedsDepthDataInPhoto: Bool
  @available(iOS 11.0, *)
  var isDepthDataFiltered: Bool
  @available(iOS 11.0, *)
  var isCameraCalibrationDataDeliveryEnabled: Bool
  @available(iOS 12.0, *)
  var isPortraitEffectsMatteDeliveryEnabled: Bool
  @available(iOS 12.0, *)
  var embedsPortraitEffectsMatteInPhoto: Bool
  @available(iOS 13.0, *)
  var enabledSemanticSegmentationMatteTypes: [AVSemanticSegmentationMatte.MatteType]
  @available(iOS 13.0, *)
  var embedsSemanticSegmentationMattesInPhoto: Bool
  @available(iOS 11.0, *)
  var metadata: [String : Any]
  var livePhotoMovieFileURL: URL?
  @available(iOS 11.0, *)
  var livePhotoVideoCodecType: AVVideoCodecType
  var livePhotoMovieMetadata: [AVMetadataItem]!
  var __availablePreviewPhotoPixelFormatTypes: [NSNumber] { get }
  var previewPhotoFormat: [String : Any]?
  @available(iOS 11.0, *)
  var availableEmbeddedThumbnailPhotoCodecTypes: [AVVideoCodecType] { get }
  @available(iOS 11.0, *)
  var embeddedThumbnailPhotoFormat: [String : Any]?
  @available(iOS 12.0, *)
  var availableRawEmbeddedThumbnailPhotoCodecTypes: [AVVideoCodecType] { get }
  @available(iOS 12.0, *)
  var rawEmbeddedThumbnailPhotoFormat: [String : Any]?
}

@available(macOS 11.0, iOS 10.0, macCatalyst 14.0, *)
extension AVCapturePhotoSettings {
  @nonobjc var availablePreviewPhotoPixelFormatTypes: [OSType] { get }
}
@available(iOS 10.0, *)
class AVCapturePhotoBracketSettings : AVCapturePhotoSettings {
  convenience init(rawPixelFormatType: OSType, processedFormat: [String : Any]?, bracketedSettings: [AVCaptureBracketedStillImageSettings])
  @available(iOS 11.0, *)
  convenience init(rawPixelFormatType: OSType, rawFileType: AVFileType?, processedFormat: [String : Any]?, processedFileType: AVFileType?, bracketedSettings: [AVCaptureBracketedStillImageSettings])
  var bracketedSettings: [AVCaptureBracketedStillImageSettings] { get }
  var isLensStabilizationEnabled: Bool
}
@available(iOS 10.0, *)
class AVCaptureResolvedPhotoSettings : NSObject {
  var uniqueID: Int64 { get }
  var photoDimensions: CMVideoDimensions { get }
  var rawPhotoDimensions: CMVideoDimensions { get }
  var previewDimensions: CMVideoDimensions { get }
  @available(iOS 11.0, *)
  var embeddedThumbnailDimensions: CMVideoDimensions { get }
  @available(iOS 12.0, *)
  var rawEmbeddedThumbnailDimensions: CMVideoDimensions { get }
  @available(iOS 12.0, *)
  var portraitEffectsMatteDimensions: CMVideoDimensions { get }
  @available(iOS 13.0, *)
  func dimensionsForSemanticSegmentationMatte(ofType semanticSegmentationMatteType: AVSemanticSegmentationMatte.MatteType) -> CMVideoDimensions
  var livePhotoMovieDimensions: CMVideoDimensions { get }
  var isFlashEnabled: Bool { get }
  @available(iOS 12.0, *)
  var isRedEyeReductionEnabled: Bool { get }
  @available(iOS, introduced: 10.0, deprecated: 13.0)
  var isStillImageStabilizationEnabled: Bool { get }
  @available(iOS 13.0, *)
  var isVirtualDeviceFusionEnabled: Bool { get }
  @available(iOS, introduced: 10.2, deprecated: 13.0)
  var isDualCameraFusionEnabled: Bool { get }
  @available(iOS 11.0, *)
  var expectedPhotoCount: Int { get }
  @available(iOS 13.0, *)
  var photoProcessingTimeRange: CMTimeRange { get }
}
@available(iOS 11.0, *)
class AVCapturePhoto : NSObject {
  var timestamp: CMTime { get }
  var isRawPhoto: Bool { get }
  var pixelBuffer: CVPixelBuffer? { get }
  var previewPixelBuffer: CVPixelBuffer? { get }
  var embeddedThumbnailPhotoFormat: [String : Any]? { get }
  var depthData: AVDepthData? { get }
  @available(iOS 12.0, *)
  var portraitEffectsMatte: AVPortraitEffectsMatte? { get }
  @available(iOS 13.0, *)
  func semanticSegmentationMatte(for semanticSegmentationMatteType: AVSemanticSegmentationMatte.MatteType) -> AVSemanticSegmentationMatte?
  var metadata: [String : Any] { get }
  var cameraCalibrationData: AVCameraCalibrationData? { get }
  var resolvedSettings: AVCaptureResolvedPhotoSettings { get }
  var photoCount: Int { get }
  var sourceDeviceType: AVCaptureDevice.DeviceType? { get }
}
extension AVCapturePhoto {
  @available(iOS 11.0, *)
  func fileDataRepresentation() -> Data?
  @available(iOS 12.0, *)
  func fileDataRepresentation(with customizer: AVCapturePhotoFileDataRepresentationCustomizer) -> Data?
  @available(iOS, introduced: 11.0, deprecated: 12.0)
  func fileDataRepresentation(withReplacementMetadata replacementMetadata: [String : Any]?, replacementEmbeddedThumbnailPhotoFormat: [String : Any]?, replacementEmbeddedThumbnailPixelBuffer: CVPixelBuffer?, replacementDepthData: AVDepthData?) -> Data?
  @available(iOS 11.0, *)
  func cgImageRepresentation() -> Unmanaged<CGImage>?
  @available(iOS 11.0, *)
  func previewCGImageRepresentation() -> Unmanaged<CGImage>?
}
extension AVCaptureDevice {
  @available(iOS 11.0, *)
  enum LensStabilizationStatus : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unsupported
    case off
    case active
    case outOfRange
    case unavailable
  }
}
extension AVCapturePhoto {
  @available(iOS 11.0, *)
  var bracketSettings: AVCaptureBracketedStillImageSettings? { get }
  @available(iOS 11.0, *)
  var sequenceCount: Int { get }
  @available(iOS 11.0, *)
  var lensStabilizationStatus: AVCaptureDevice.LensStabilizationStatus { get }
}
@available(iOS 12.0, *)
protocol AVCapturePhotoFileDataRepresentationCustomizer : NSObjectProtocol {
  optional func replacementMetadata(for photo: AVCapturePhoto) -> [String : Any]?
  optional func replacementEmbeddedThumbnailPixelBuffer(withPhotoFormat replacementEmbeddedThumbnailPhotoFormatOut: AutoreleasingUnsafeMutablePointer<NSDictionary?>, for photo: AVCapturePhoto) -> Unmanaged<CVPixelBuffer>?
  optional func replacementDepthData(for photo: AVCapturePhoto) -> AVDepthData?
  optional func replacementPortraitEffectsMatte(for photo: AVCapturePhoto) -> AVPortraitEffectsMatte?
  @available(iOS 13.0, *)
  optional func replacementSemanticSegmentationMatte(ofType semanticSegmentationMatteType: AVSemanticSegmentationMatte.MatteType, for photo: AVCapturePhoto) -> AVSemanticSegmentationMatte?
}
