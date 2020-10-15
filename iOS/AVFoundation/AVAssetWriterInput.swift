
@available(iOS 4.1, *)
class AVAssetWriterInput : NSObject {
  convenience init(mediaType: AVMediaType, outputSettings: [String : Any]?)
  @available(iOS 6.0, *)
  init(mediaType: AVMediaType, outputSettings: [String : Any]?, sourceFormatHint: CMFormatDescription?)
  var mediaType: AVMediaType { get }
  var outputSettings: [String : Any]? { get }
  @available(iOS 6.0, *)
  var sourceFormatHint: CMFormatDescription? { get }
  var metadata: [AVMetadataItem]
  var isReadyForMoreMediaData: Bool { get }
  var expectsMediaDataInRealTime: Bool
  func requestMediaDataWhenReady(on queue: DispatchQueue, using block: @escaping () -> Void)
  func append(_ sampleBuffer: CMSampleBuffer) -> Bool
  func markAsFinished()
}
extension AVAssetWriterInput {
  @available(iOS 7.0, *)
  var languageCode: String?
  @available(iOS 7.0, *)
  var extendedLanguageTag: String?
}
extension AVAssetWriterInput {
  @available(iOS 7.0, *)
  var naturalSize: CGSize
  var transform: CGAffineTransform
}
extension AVAssetWriterInput {
  @available(iOS 7.0, *)
  var preferredVolume: Float
}
extension AVAssetWriterInput {
  @available(iOS 7.0, *)
  var marksOutputTrackAsEnabled: Bool
  @available(iOS 4.3, *)
  var mediaTimeScale: CMTimeScale
  @available(iOS 8.0, *)
  var preferredMediaChunkDuration: CMTime
  @available(iOS 8.0, *)
  var preferredMediaChunkAlignment: Int
  @available(iOS 8.0, *)
  var sampleReferenceBaseURL: URL?
  @available(iOS 11.0, *)
  var mediaDataLocation: AVAssetWriterInput.MediaDataLocation
}
extension AVAssetWriterInput {
  @available(iOS 11.0, *)
  struct MediaDataLocation : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension AVAssetWriterInput.MediaDataLocation {
  @available(iOS 11.0, *)
  static let interleavedWithMainMediaData: AVAssetWriterInput.MediaDataLocation
  @available(iOS 11.0, *)
  static let beforeMainMediaDataNotInterleaved: AVAssetWriterInput.MediaDataLocation
}
extension AVAssetWriterInput {
  @available(iOS 7.0, *)
  func canAddTrackAssociation(withTrackOf input: AVAssetWriterInput, type trackAssociationType: String) -> Bool
  @available(iOS 7.0, *)
  func addTrackAssociation(withTrackOf input: AVAssetWriterInput, type trackAssociationType: String)
}
extension AVAssetWriterInput {
  @available(iOS 8.0, *)
  var performsMultiPassEncodingIfSupported: Bool
  @available(iOS 8.0, *)
  var canPerformMultiplePasses: Bool { get }
  @available(iOS 8.0, *)
  var currentPassDescription: AVAssetWriterInputPassDescription? { get }
  @available(iOS 8.0, *)
  func respondToEachPassDescription(on queue: DispatchQueue, using block: @escaping () -> Void)
  @available(iOS 8.0, *)
  func markCurrentPassAsFinished()
}
@available(iOS 8.0, *)
class AVAssetWriterInputPassDescription : NSObject {
  var sourceTimeRanges: [NSValue] { get }
}
@available(iOS 4.1, *)
class AVAssetWriterInputPixelBufferAdaptor : NSObject {
  init(assetWriterInput input: AVAssetWriterInput, sourcePixelBufferAttributes: [String : Any]? = nil)
  var assetWriterInput: AVAssetWriterInput { get }
  var sourcePixelBufferAttributes: [String : Any]? { get }
  var pixelBufferPool: CVPixelBufferPool? { get }
  func append(_ pixelBuffer: CVPixelBuffer, withPresentationTime presentationTime: CMTime) -> Bool
}
@available(iOS 8.0, *)
class AVAssetWriterInputMetadataAdaptor : NSObject {
  init(assetWriterInput input: AVAssetWriterInput)
  var assetWriterInput: AVAssetWriterInput { get }
  func append(_ timedMetadataGroup: AVTimedMetadataGroup) -> Bool
}
