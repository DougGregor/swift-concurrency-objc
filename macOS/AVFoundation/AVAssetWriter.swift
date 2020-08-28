
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
@available(macOS 10.7, *)
class AVAssetWriter : NSObject {
  convenience init(url outputURL: URL, fileType outputFileType: AVFileType) throws
  init(outputURL: URL, fileType outputFileType: AVFileType) throws
  @available(macOS 11.0, *)
  init(contentType outputContentType: UTType)
  var outputURL: URL { get }
  var outputFileType: AVFileType { get }
  var availableMediaTypes: [AVMediaType] { get }
  var status: AVAssetWriter.Status { get }
  var error: Error? { get }
  var metadata: [AVMetadataItem]
  var shouldOptimizeForNetworkUse: Bool
  @available(macOS 10.10, *)
  var directoryForTemporaryFiles: URL?
  var inputs: [AVAssetWriterInput] { get }
  func canApply(outputSettings: [String : Any]?, forMediaType mediaType: AVMediaType) -> Bool
  func canAdd(_ input: AVAssetWriterInput) -> Bool
  func add(_ input: AVAssetWriterInput)
  func startWriting() -> Bool
  func startSession(atSourceTime startTime: CMTime)
  func endSession(atSourceTime endTime: CMTime)
  func cancelWriting()
  @available(macOS 10.9, *)
  func finishWriting(completionHandler handler: @escaping () -> Void)
  @available(macOS 10.9, *)
  func finishWriting() async
}
extension AVAssetWriter {
  var movieFragmentInterval: CMTime
  @available(macOS 11.0, *)
  var initialMovieFragmentSequenceNumber: Int
  @available(macOS 11.0, *)
  var producesCombinableFragments: Bool
  var overallDurationHint: CMTime
  @available(macOS 10.7, *)
  var movieTimeScale: CMTimeScale
}
extension AVAssetWriter {
  @available(macOS 10.9, *)
  func canAdd(_ inputGroup: AVAssetWriterInputGroup) -> Bool
  @available(macOS 10.9, *)
  func add(_ inputGroup: AVAssetWriterInputGroup)
  @available(macOS 10.9, *)
  var inputGroups: [AVAssetWriterInputGroup] { get }
}
@available(macOS 10.9, *)
class AVAssetWriterInputGroup : AVMediaSelectionGroup {
  init(inputs: [AVAssetWriterInput], defaultInput: AVAssetWriterInput?)
  var inputs: [AVAssetWriterInput] { get }
  var defaultInput: AVAssetWriterInput? { get }
}
extension AVAssetWriter {
  @available(macOS 11.0, *)
  var preferredOutputSegmentInterval: CMTime
  @available(macOS 11.0, *)
  var initialSegmentStartTime: CMTime
  @available(macOS 11.0, *)
  var outputFileTypeProfile: AVFileTypeProfile?
  @available(macOS 11.0, *)
  weak var delegate: @sil_weak AVAssetWriterDelegate?
  @available(macOS 11.0, *)
  func flushSegment()
}
@available(macOS 11.0, *)
protocol AVAssetWriterDelegate : NSObjectProtocol {
  optional func assetWriter(_ writer: AVAssetWriter, didOutputSegmentData segmentData: Data, segmentType: AVAssetSegmentType, segmentReport: AVAssetSegmentReport?)
  optional func assetWriter(_ writer: AVAssetWriter, didOutputSegmentData segmentData: Data, segmentType: AVAssetSegmentType)
}
