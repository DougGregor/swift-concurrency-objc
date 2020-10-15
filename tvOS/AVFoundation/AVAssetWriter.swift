
extension AVAssetWriter {
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case writing
    case completed
    case failed
    case cancelled
  }
}
@available(tvOS 9.0, *)
class AVAssetWriter : NSObject {
  convenience init(url outputURL: URL, fileType outputFileType: AVFileType) throws
  init(outputURL: URL, fileType outputFileType: AVFileType) throws
  @available(tvOS 14.0, *)
  init(contentType outputContentType: UTType)
  var outputURL: URL { get }
  var outputFileType: AVFileType { get }
  var availableMediaTypes: [AVMediaType] { get }
  var status: AVAssetWriter.Status { get }
  var error: Error? { get }
  var metadata: [AVMetadataItem]
  var shouldOptimizeForNetworkUse: Bool
  @available(tvOS 9.0, *)
  var directoryForTemporaryFiles: URL?
  var inputs: [AVAssetWriterInput] { get }
  func canApply(outputSettings: [String : Any]?, forMediaType mediaType: AVMediaType) -> Bool
  func canAdd(_ input: AVAssetWriterInput) -> Bool
  func add(_ input: AVAssetWriterInput)
  func startWriting() -> Bool
  func startSession(atSourceTime startTime: CMTime)
  func endSession(atSourceTime endTime: CMTime)
  func cancelWriting()
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "No longer supported")
  func finishWriting() -> Bool
  @available(tvOS 9.0, *)
  func finishWriting(completionHandler handler: @escaping () -> Void)
}
extension AVAssetWriter {
  var movieFragmentInterval: CMTime
  @available(tvOS 14.0, *)
  var initialMovieFragmentSequenceNumber: Int
  @available(tvOS 14.0, *)
  var producesCombinableFragments: Bool
  var overallDurationHint: CMTime
  @available(tvOS 9.0, *)
  var movieTimeScale: CMTimeScale
}
extension AVAssetWriter {
  @available(tvOS 9.0, *)
  func canAdd(_ inputGroup: AVAssetWriterInputGroup) -> Bool
  @available(tvOS 9.0, *)
  func add(_ inputGroup: AVAssetWriterInputGroup)
  @available(tvOS 9.0, *)
  var inputGroups: [AVAssetWriterInputGroup] { get }
}
@available(tvOS 9.0, *)
class AVAssetWriterInputGroup : AVMediaSelectionGroup {
  init(inputs: [AVAssetWriterInput], defaultInput: AVAssetWriterInput?)
  var inputs: [AVAssetWriterInput] { get }
  var defaultInput: AVAssetWriterInput? { get }
}
extension AVAssetWriter {
  @available(tvOS 14.0, *)
  var preferredOutputSegmentInterval: CMTime
  @available(tvOS 14.0, *)
  var initialSegmentStartTime: CMTime
  @available(tvOS 14.0, *)
  var outputFileTypeProfile: AVFileTypeProfile?
  @available(tvOS 14.0, *)
  weak var delegate: @sil_weak AVAssetWriterDelegate?
  @available(tvOS 14.0, *)
  func flushSegment()
}
@available(tvOS 14.0, *)
protocol AVAssetWriterDelegate : NSObjectProtocol {
  optional func assetWriter(_ writer: AVAssetWriter, didOutputSegmentData segmentData: Data, segmentType: AVAssetSegmentType, segmentReport: AVAssetSegmentReport?)
  optional func assetWriter(_ writer: AVAssetWriter, didOutputSegmentData segmentData: Data, segmentType: AVAssetSegmentType)
}
