
@available(macOS 10.7, *)
class AVAssetWriterInput : NSObject {
  convenience init(mediaType: AVMediaType, outputSettings: [String : Any]?)
  @available(macOS 10.8, *)
  init(mediaType: AVMediaType, outputSettings: [String : Any]?, sourceFormatHint: CMFormatDescription?)
  var mediaType: AVMediaType { get }
  var outputSettings: [String : Any]? { get }
  @available(macOS 10.8, *)
  var sourceFormatHint: CMFormatDescription? { get }
  var metadata: [AVMetadataItem]
  var isReadyForMoreMediaData: Bool { get }
  var expectsMediaDataInRealTime: Bool
  func requestMediaDataWhenReady(on queue: DispatchQueue, using block: @escaping () -> Void)
  func append(_ sampleBuffer: CMSampleBuffer) -> Bool
  func markAsFinished()
}
extension AVAssetWriterInput {
  @available(macOS 10.9, *)
  var languageCode: String?
  @available(macOS 10.9, *)
  var extendedLanguageTag: String?
}
extension AVAssetWriterInput {
  @available(macOS 10.9, *)
  var naturalSize: CGSize
  var transform: CGAffineTransform
}
extension AVAssetWriterInput {
  @available(macOS 10.9, *)
  var preferredVolume: Float
}
extension AVAssetWriterInput {
  @available(macOS 10.9, *)
  var marksOutputTrackAsEnabled: Bool
  @available(macOS 10.7, *)
  var mediaTimeScale: CMTimeScale
  @available(macOS 10.10, *)
  var preferredMediaChunkDuration: CMTime
  @available(macOS 10.10, *)
  var preferredMediaChunkAlignment: Int
  @available(macOS 10.10, *)
  var sampleReferenceBaseURL: URL?
  @available(macOS 10.13, *)
  var mediaDataLocation: AVAssetWriterInput.MediaDataLocation
}
extension AVAssetWriterInput {
  @available(macOS 10.13, *)
  struct MediaDataLocation : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension AVAssetWriterInput.MediaDataLocation {
  @available(macOS 10.13, *)
  static let interleavedWithMainMediaData: AVAssetWriterInput.MediaDataLocation
  @available(macOS 10.13, *)
  static let beforeMainMediaDataNotInterleaved: AVAssetWriterInput.MediaDataLocation
}
extension AVAssetWriterInput {
  @available(macOS 10.9, *)
  func canAddTrackAssociation(withTrackOf input: AVAssetWriterInput, type trackAssociationType: String) -> Bool
  @available(macOS 10.9, *)
  func addTrackAssociation(withTrackOf input: AVAssetWriterInput, type trackAssociationType: String)
}
extension AVAssetWriterInput {
  @available(macOS 10.10, *)
  var performsMultiPassEncodingIfSupported: Bool
  @available(macOS 10.10, *)
  var canPerformMultiplePasses: Bool { get }
  @available(macOS 10.10, *)
  var currentPassDescription: AVAssetWriterInputPassDescription? { get }
  @available(macOS 10.10, *)
  func respondToEachPassDescription(on queue: DispatchQueue, using block: @escaping () -> Void)
  @available(macOS 10.10, *)
  func markCurrentPassAsFinished()
}
@available(macOS 10.10, *)
class AVAssetWriterInputPassDescription : NSObject {
  var sourceTimeRanges: [NSValue] { get }
}
@available(macOS 10.7, *)
class AVAssetWriterInputPixelBufferAdaptor : NSObject {
  init(assetWriterInput input: AVAssetWriterInput, sourcePixelBufferAttributes: [String : Any]? = nil)
  var assetWriterInput: AVAssetWriterInput { get }
  var sourcePixelBufferAttributes: [String : Any]? { get }
  var pixelBufferPool: CVPixelBufferPool? { get }
  func append(_ pixelBuffer: CVPixelBuffer, withPresentationTime presentationTime: CMTime) -> Bool
}
@available(macOS 10.10, *)
class AVAssetWriterInputMetadataAdaptor : NSObject {
  init(assetWriterInput input: AVAssetWriterInput)
  var assetWriterInput: AVAssetWriterInput { get }
  func append(_ timedMetadataGroup: AVTimedMetadataGroup) -> Bool
}
