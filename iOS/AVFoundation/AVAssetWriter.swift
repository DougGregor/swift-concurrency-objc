
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
@available(iOS 4.1, *)
class AVAssetWriter : NSObject {
  convenience init(url outputURL: URL, fileType outputFileType: AVFileType) throws
  init(outputURL: URL, fileType outputFileType: AVFileType) throws
  @available(iOS 14.0, *)
  init(contentType outputContentType: UTType)
  var outputURL: URL { get }
  var outputFileType: AVFileType { get }
  var availableMediaTypes: [AVMediaType] { get }
  var status: AVAssetWriter.Status { get }
  var error: Error? { get }
  var metadata: [AVMetadataItem]
  var shouldOptimizeForNetworkUse: Bool
  @available(iOS 8.0, *)
  var directoryForTemporaryFiles: URL?
  var inputs: [AVAssetWriterInput] { get }
  func canApply(outputSettings: [String : Any]?, forMediaType mediaType: AVMediaType) -> Bool
  func canAdd(_ input: AVAssetWriterInput) -> Bool
  func add(_ input: AVAssetWriterInput)
  func startWriting() -> Bool
  func startSession(atSourceTime startTime: CMTime)
  func endSession(atSourceTime endTime: CMTime)
  func cancelWriting()
  @available(iOS 6.0, *)
  func finishWriting(completionHandler handler: @escaping () -> Void)
  @available(iOS 6.0, *)
  func finishWriting() async
}
extension AVAssetWriter {
  var movieFragmentInterval: CMTime
  @available(iOS 14.0, *)
  var initialMovieFragmentSequenceNumber: Int
  @available(iOS 14.0, *)
  var producesCombinableFragments: Bool
  var overallDurationHint: CMTime
  @available(iOS 4.3, *)
  var movieTimeScale: CMTimeScale
}
extension AVAssetWriter {
  @available(iOS 7.0, *)
  func canAdd(_ inputGroup: AVAssetWriterInputGroup) -> Bool
  @available(iOS 7.0, *)
  func add(_ inputGroup: AVAssetWriterInputGroup)
  @available(iOS 7.0, *)
  var inputGroups: [AVAssetWriterInputGroup] { get }
}
@available(iOS 7.0, *)
class AVAssetWriterInputGroup : AVMediaSelectionGroup {
  init(inputs: [AVAssetWriterInput], defaultInput: AVAssetWriterInput?)
  var inputs: [AVAssetWriterInput] { get }
  var defaultInput: AVAssetWriterInput? { get }
}
extension AVAssetWriter {
  @available(iOS 14.0, *)
  var preferredOutputSegmentInterval: CMTime
  @available(iOS 14.0, *)
  var initialSegmentStartTime: CMTime
  @available(iOS 14.0, *)
  var outputFileTypeProfile: AVFileTypeProfile?
  @available(iOS 14.0, *)
  weak var delegate: @sil_weak AVAssetWriterDelegate?
  @available(iOS 14.0, *)
  func flushSegment()
}
@available(iOS 14.0, *)
protocol AVAssetWriterDelegate : NSObjectProtocol {
  optional func assetWriter(_ writer: AVAssetWriter, didOutputSegmentData segmentData: Data, segmentType: AVAssetSegmentType, segmentReport: AVAssetSegmentReport?)
  optional func assetWriter(_ writer: AVAssetWriter, didOutputSegmentData segmentData: Data, segmentType: AVAssetSegmentType)
}
