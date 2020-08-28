
extension NSNotification.Name {
  @available(tvOS 9.0, *)
  static let AVPlayerItemTimeJumped: NSNotification.Name
  @available(tvOS 9.0, *)
  static let AVPlayerItemDidPlayToEndTime: NSNotification.Name
  @available(tvOS 9.0, *)
  static let AVPlayerItemFailedToPlayToEndTime: NSNotification.Name
  @available(tvOS 9.0, *)
  static let AVPlayerItemPlaybackStalled: NSNotification.Name
  @available(tvOS 9.0, *)
  static let AVPlayerItemNewAccessLogEntry: NSNotification.Name
  @available(tvOS 9.0, *)
  static let AVPlayerItemNewErrorLogEntry: NSNotification.Name
}
extension AVPlayerItem {
  @available(tvOS 13.0, *)
  class let recommendedTimeOffsetFromLiveDidChangeNotification: NSNotification.Name
  @available(tvOS 13.0, *)
  class let mediaSelectionDidChangeNotification: NSNotification.Name
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case readyToPlay
    case failed
  }
}
@available(tvOS 9.0, *)
let AVPlayerItemFailedToPlayToEndTimeErrorKey: String
struct AVAudioSpatializationFormats : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var monoAndStereo: AVAudioSpatializationFormats { get }
  static var multichannel: AVAudioSpatializationFormats { get }
  static var monoStereoAndMultichannel: AVAudioSpatializationFormats { get }
}
@available(tvOS 9.0, *)
class AVPlayerItem : NSObject, NSCopying {
  convenience init(url URL: URL)
  convenience init(asset: AVAsset)
  @available(tvOS 9.0, *)
  init(asset: AVAsset, automaticallyLoadedAssetKeys: [String]?)
  var status: AVPlayerItem.Status { get }
  var error: Error? { get }
}
extension AVPlayerItem {
  var asset: AVAsset { get }
  var tracks: [AVPlayerItemTrack] { get }
  @available(tvOS 9.0, *)
  var duration: CMTime { get }
  var presentationSize: CGSize { get }
  @available(tvOS, introduced: 9.0, deprecated: 13.0, message: "Use AVPlayerItemMetadataOutput to obtain timed metadata")
  var timedMetadata: [AVMetadataItem]? { get }
  @available(tvOS 9.0, *)
  var automaticallyLoadedAssetKeys: [String] { get }
}
extension AVPlayerItem {
  @available(tvOS 9.0, *)
  var canPlayFastForward: Bool { get }
  @available(tvOS 9.0, *)
  var canPlaySlowForward: Bool { get }
  @available(tvOS 9.0, *)
  var canPlayReverse: Bool { get }
  @available(tvOS 9.0, *)
  var canPlaySlowReverse: Bool { get }
  @available(tvOS 9.0, *)
  var canPlayFastReverse: Bool { get }
  @available(tvOS 9.0, *)
  var canStepForward: Bool { get }
  @available(tvOS 9.0, *)
  var canStepBackward: Bool { get }
  @available(tvOS 13.0, *)
  var configuredTimeOffsetFromLive: CMTime
  @available(tvOS 13.0, *)
  var recommendedTimeOffsetFromLive: CMTime { get }
  @available(tvOS 13.0, *)
  var automaticallyPreservesTimeOffsetFromLive: Bool
}
extension AVPlayerItem {
  func currentTime() -> CMTime
  var forwardPlaybackEndTime: CMTime
  var reversePlaybackEndTime: CMTime
  var seekableTimeRanges: [NSValue] { get }
  @available(tvOS 9.0, *)
  func seek(to time: CMTime, completionHandler: ((Bool) -> Void)? = nil)
  @available(tvOS 9.0, *)
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: ((Bool) -> Void)? = nil)
  @available(tvOS 9.0, *)
  func cancelPendingSeeks()
  func currentDate() -> Date?
  @available(tvOS 9.0, *)
  func seek(to date: Date, completionHandler: ((Bool) -> Void)? = nil) -> Bool
  func step(byCount stepCount: Int)
  @available(tvOS 9.0, *)
  var timebase: CMTimebase? { get }
}
extension AVPlayerItem {
  @available(tvOS 9.0, *)
  @NSCopying var videoComposition: AVVideoComposition?
  @available(tvOS 9.0, *)
  var customVideoCompositor: AVVideoCompositing? { get }
  @available(tvOS 9.0, *)
  var seekingWaitsForVideoCompositionRendering: Bool
  @available(tvOS 9.0, *)
  var textStyleRules: [AVTextStyleRule]?
  @available(tvOS 11.0, *)
  var videoApertureMode: AVVideoApertureMode
}
extension AVPlayerItem {
  @available(tvOS 9.0, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
  @NSCopying var audioMix: AVAudioMix?
}
extension AVPlayerItem {
  var loadedTimeRanges: [NSValue] { get }
  var isPlaybackLikelyToKeepUp: Bool { get }
  var isPlaybackBufferFull: Bool { get }
  var isPlaybackBufferEmpty: Bool { get }
  @available(tvOS 9.0, *)
  var canUseNetworkResourcesForLiveStreamingWhilePaused: Bool
  @available(tvOS 10.0, *)
  var preferredForwardBufferDuration: TimeInterval
}
extension AVPlayerItem {
  @available(tvOS 9.0, *)
  var preferredPeakBitRate: Double
  @available(tvOS 11.0, *)
  var preferredMaximumResolution: CGSize
  @available(tvOS 14.0, *)
  var startsOnFirstEligibleVariant: Bool
}
extension AVPlayerItem {
  @available(tvOS 9.0, *)
  func select(_ mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
  @available(tvOS 9.0, *)
  func selectMediaOptionAutomatically(in mediaSelectionGroup: AVMediaSelectionGroup)
  @available(tvOS 9.0, *)
  var currentMediaSelection: AVMediaSelection { get }
}
extension AVPlayerItem {
  @available(tvOS 9.0, *)
  func accessLog() -> AVPlayerItemAccessLog?
  @available(tvOS 9.0, *)
  func errorLog() -> AVPlayerItemErrorLog?
}
extension AVPlayerItem {
  @available(tvOS 9.0, *)
  func add(_ output: AVPlayerItemOutput)
  @available(tvOS 9.0, *)
  func remove(_ output: AVPlayerItemOutput)
  @available(tvOS 9.0, *)
  var outputs: [AVPlayerItemOutput] { get }
}
extension AVPlayerItem {
  @available(tvOS 9.3, *)
  func add(_ collector: AVPlayerItemMediaDataCollector)
  @available(tvOS 9.3, *)
  func remove(_ collector: AVPlayerItemMediaDataCollector)
  @available(tvOS 9.3, *)
  var mediaDataCollectors: [AVPlayerItemMediaDataCollector] { get }
}
extension AVPlayerItem {
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use -seekToTime:completionHandler:, passing nil for the completionHandler if you don't require notification of completion")
  func seek(to time: CMTime)
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use -seekToTime:toleranceBefore:toleranceAfter:completionHandler:, passing nil for the completionHandler if you don't require notification of completion")
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use -seekToDate:completionHandler:, passing nil for the completionHandler if you don't require notification of completion")
  func seek(to date: Date) -> Bool
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use currentMediaSelection to obtain an instance of AVMediaSelection, which encompasses the currently selected AVMediaSelectionOption in each of the available AVMediaSelectionGroups")
  func selectedMediaOption(in mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
}
@available(tvOS 9.0, *)
class AVPlayerItemAccessLog : NSObject, NSCopying {
  func extendedLogData() -> Data?
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AVPlayerItemAccessLogEvent] { get }
}
@available(tvOS 9.0, *)
class AVPlayerItemErrorLog : NSObject, NSCopying {
  func extendedLogData() -> Data?
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AVPlayerItemErrorLogEvent] { get }
}
@available(tvOS 9.0, *)
class AVPlayerItemAccessLogEvent : NSObject, NSCopying {
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "No longer supported")
  var numberOfSegmentsDownloaded: Int { get }
  @available(tvOS 9.0, *)
  var numberOfMediaRequests: Int { get }
  var playbackStartDate: Date? { get }
  var uri: String? { get }
  var serverAddress: String? { get }
  var numberOfServerAddressChanges: Int { get }
  var playbackSessionID: String? { get }
  var playbackStartOffset: TimeInterval { get }
  var segmentsDownloadedDuration: TimeInterval { get }
  var durationWatched: TimeInterval { get }
  var numberOfStalls: Int { get }
  var numberOfBytesTransferred: Int64 { get }
  @available(tvOS 9.0, *)
  var transferDuration: TimeInterval { get }
  var observedBitrate: Double { get }
  var indicatedBitrate: Double { get }
  @available(tvOS 10.0, *)
  var indicatedAverageBitrate: Double { get }
  @available(tvOS 10.0, *)
  var averageVideoBitrate: Double { get }
  @available(tvOS 10.0, *)
  var averageAudioBitrate: Double { get }
  var numberOfDroppedVideoFrames: Int { get }
  @available(tvOS 9.0, *)
  var startupTime: TimeInterval { get }
  @available(tvOS 9.0, *)
  var downloadOverdue: Int { get }
  @available(tvOS 9.0, *)
  var observedMaxBitrate: Double { get }
  @available(tvOS 9.0, *)
  var observedMinBitrate: Double { get }
  @available(tvOS 9.0, *)
  var observedBitrateStandardDeviation: Double { get }
  @available(tvOS 9.0, *)
  var playbackType: String? { get }
  @available(tvOS 9.0, *)
  var mediaRequestsWWAN: Int { get }
  @available(tvOS 9.0, *)
  var switchBitrate: Double { get }
}
@available(tvOS 9.0, *)
class AVPlayerItemErrorLogEvent : NSObject, NSCopying {
  var date: Date? { get }
  var uri: String? { get }
  var serverAddress: String? { get }
  var playbackSessionID: String? { get }
  var errorStatusCode: Int { get }
  var errorDomain: String { get }
  var errorComment: String? { get }
}
