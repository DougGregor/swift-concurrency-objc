
extension NSNotification.Name {
  @available(macOS 10.7, *)
  static let AVPlayerItemTimeJumped: NSNotification.Name
  @available(macOS 10.7, *)
  static let AVPlayerItemDidPlayToEndTime: NSNotification.Name
  @available(macOS 10.7, *)
  static let AVPlayerItemFailedToPlayToEndTime: NSNotification.Name
  @available(macOS 10.9, *)
  static let AVPlayerItemPlaybackStalled: NSNotification.Name
  @available(macOS 10.9, *)
  static let AVPlayerItemNewAccessLogEntry: NSNotification.Name
  @available(macOS 10.9, *)
  static let AVPlayerItemNewErrorLogEntry: NSNotification.Name
}
extension AVPlayerItem {
  @available(macOS 10.15, *)
  class let recommendedTimeOffsetFromLiveDidChangeNotification: NSNotification.Name
  @available(macOS 10.15, *)
  class let mediaSelectionDidChangeNotification: NSNotification.Name
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case readyToPlay
    case failed
  }
}
@available(macOS 10.7, *)
let AVPlayerItemFailedToPlayToEndTimeErrorKey: String
struct AVAudioSpatializationFormats : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var monoAndStereo: AVAudioSpatializationFormats { get }
  static var multichannel: AVAudioSpatializationFormats { get }
  static var monoStereoAndMultichannel: AVAudioSpatializationFormats { get }
}
@available(macOS 10.7, *)
class AVPlayerItem : NSObject, NSCopying {
  convenience init(url URL: URL)
  convenience init(asset: AVAsset)
  @available(macOS 10.9, *)
  init(asset: AVAsset, automaticallyLoadedAssetKeys: [String]?)
  var status: AVPlayerItem.Status { get }
  var error: Error? { get }
}
extension AVPlayerItem {
  var asset: AVAsset { get }
  var tracks: [AVPlayerItemTrack] { get }
  @available(macOS 10.7, *)
  var duration: CMTime { get }
  var presentationSize: CGSize { get }
  @available(macOS, introduced: 10.7, deprecated: 10.15, message: "Use AVPlayerItemMetadataOutput to obtain timed metadata")
  var timedMetadata: [AVMetadataItem]? { get }
  @available(macOS 10.9, *)
  var automaticallyLoadedAssetKeys: [String] { get }
}
extension AVPlayerItem {
  @available(macOS 10.8, *)
  var canPlayFastForward: Bool { get }
  @available(macOS 10.8, *)
  var canPlaySlowForward: Bool { get }
  @available(macOS 10.8, *)
  var canPlayReverse: Bool { get }
  @available(macOS 10.8, *)
  var canPlaySlowReverse: Bool { get }
  @available(macOS 10.8, *)
  var canPlayFastReverse: Bool { get }
  @available(macOS 10.8, *)
  var canStepForward: Bool { get }
  @available(macOS 10.8, *)
  var canStepBackward: Bool { get }
  @available(macOS 10.15, *)
  var configuredTimeOffsetFromLive: CMTime
  @available(macOS 10.15, *)
  var recommendedTimeOffsetFromLive: CMTime { get }
  @available(macOS 10.15, *)
  var automaticallyPreservesTimeOffsetFromLive: Bool
}
extension AVPlayerItem {
  func currentTime() -> CMTime
  var forwardPlaybackEndTime: CMTime
  var reversePlaybackEndTime: CMTime
  var seekableTimeRanges: [NSValue] { get }
  @available(macOS 10.7, *)
  func seek(to time: CMTime, completionHandler: ((Bool) -> Void)? = nil)
  @available(macOS 10.7, *)
  func seekAsync(to time: CMTime) async -> Bool
  @available(macOS 10.7, *)
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: ((Bool) -> Void)? = nil)
  @available(macOS 10.7, *)
  func seekAsync(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime) async -> Bool
  @available(macOS 10.7, *)
  func cancelPendingSeeks()
  func currentDate() -> Date?
  @available(macOS 10.9, *)
  func seek(to date: Date, completionHandler: ((Bool) -> Void)? = nil) -> Bool
  func step(byCount stepCount: Int)
  @available(macOS 10.8, *)
  var timebase: CMTimebase? { get }
}
extension AVPlayerItem {
  @available(macOS 10.7, *)
  @NSCopying var videoComposition: AVVideoComposition?
  @available(macOS 10.9, *)
  var customVideoCompositor: AVVideoCompositing? { get }
  @available(macOS 10.9, *)
  var seekingWaitsForVideoCompositionRendering: Bool
  @available(macOS 10.9, *)
  var textStyleRules: [AVTextStyleRule]?
  @available(macOS 10.13, *)
  var videoApertureMode: AVVideoApertureMode
  @available(macOS 11.0, *)
  var appliesPerFrameHDRDisplayMetadata: Bool
}
extension AVPlayerItem {
  @available(macOS 10.9, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
  @available(macOS, introduced: 10.15, deprecated: 100000)
  var isAudioSpatializationAllowed: Bool
  @available(macOS 11.0, *)
  var allowedAudioSpatializationFormats: AVAudioSpatializationFormats
  @NSCopying var audioMix: AVAudioMix?
}
extension AVPlayerItem {
  var loadedTimeRanges: [NSValue] { get }
  var isPlaybackLikelyToKeepUp: Bool { get }
  var isPlaybackBufferFull: Bool { get }
  var isPlaybackBufferEmpty: Bool { get }
  @available(macOS 10.11, *)
  var canUseNetworkResourcesForLiveStreamingWhilePaused: Bool
  @available(macOS 10.12, *)
  var preferredForwardBufferDuration: TimeInterval
}
extension AVPlayerItem {
  @available(macOS 10.10, *)
  var preferredPeakBitRate: Double
  @available(macOS 10.13, *)
  var preferredMaximumResolution: CGSize
  @available(macOS 11.0, *)
  var startsOnFirstEligibleVariant: Bool
}
extension AVPlayerItem {
  @available(macOS 10.8, *)
  func select(_ mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
  @available(macOS 10.9, *)
  func selectMediaOptionAutomatically(in mediaSelectionGroup: AVMediaSelectionGroup)
  @available(macOS 10.11, *)
  var currentMediaSelection: AVMediaSelection { get }
}
extension AVPlayerItem {
  @available(macOS 10.7, *)
  func accessLog() -> AVPlayerItemAccessLog?
  @available(macOS 10.7, *)
  func errorLog() -> AVPlayerItemErrorLog?
}
extension AVPlayerItem {
  @available(macOS 10.8, *)
  func add(_ output: AVPlayerItemOutput)
  @available(macOS 10.8, *)
  func remove(_ output: AVPlayerItemOutput)
  @available(macOS 10.8, *)
  var outputs: [AVPlayerItemOutput] { get }
}
extension AVPlayerItem {
  @available(macOS 10.11.3, *)
  func add(_ collector: AVPlayerItemMediaDataCollector)
  @available(macOS 10.11.3, *)
  func remove(_ collector: AVPlayerItemMediaDataCollector)
  @available(macOS 10.11.3, *)
  var mediaDataCollectors: [AVPlayerItemMediaDataCollector] { get }
}
extension AVPlayerItem {
  @available(macOS, introduced: 10.7, deprecated: 10.13, message: "Use -seekToTime:completionHandler:, passing nil for the completionHandler if you don't require notification of completion")
  func seek(to time: CMTime)
  @available(macOS, introduced: 10.7, deprecated: 10.13, message: "Use -seekToTime:toleranceBefore:toleranceAfter:completionHandler:, passing nil for the completionHandler if you don't require notification of completion")
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)
  @available(macOS, introduced: 10.7, deprecated: 10.13, message: "Use -seekToDate:completionHandler:, passing nil for the completionHandler if you don't require notification of completion")
  func seek(to date: Date) -> Bool
  @available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use currentMediaSelection to obtain an instance of AVMediaSelection, which encompasses the currently selected AVMediaSelectionOption in each of the available AVMediaSelectionGroups")
  func selectedMediaOption(in mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
}
@available(macOS 10.7, *)
class AVPlayerItemAccessLog : NSObject, NSCopying {
  func extendedLogData() -> Data?
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AVPlayerItemAccessLogEvent] { get }
}
@available(macOS 10.7, *)
class AVPlayerItemErrorLog : NSObject, NSCopying {
  func extendedLogData() -> Data?
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AVPlayerItemErrorLogEvent] { get }
}
@available(macOS 10.7, *)
class AVPlayerItemAccessLogEvent : NSObject, NSCopying {
  @available(macOS 10.9, *)
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
  @available(macOS 10.9, *)
  var transferDuration: TimeInterval { get }
  var observedBitrate: Double { get }
  var indicatedBitrate: Double { get }
  @available(macOS 10.12, *)
  var indicatedAverageBitrate: Double { get }
  @available(macOS 10.12, *)
  var averageVideoBitrate: Double { get }
  @available(macOS 10.12, *)
  var averageAudioBitrate: Double { get }
  var numberOfDroppedVideoFrames: Int { get }
  @available(macOS 10.9, *)
  var startupTime: TimeInterval { get }
  @available(macOS 10.9, *)
  var downloadOverdue: Int { get }
  @available(macOS 10.9, *)
  var observedMaxBitrate: Double { get }
  @available(macOS 10.9, *)
  var observedMinBitrate: Double { get }
  @available(macOS 10.9, *)
  var observedBitrateStandardDeviation: Double { get }
  @available(macOS 10.9, *)
  var playbackType: String? { get }
  @available(macOS 10.9, *)
  var mediaRequestsWWAN: Int { get }
  @available(macOS 10.9, *)
  var switchBitrate: Double { get }
}
@available(macOS 10.7, *)
class AVPlayerItemErrorLogEvent : NSObject, NSCopying {
  var date: Date? { get }
  var uri: String? { get }
  var serverAddress: String? { get }
  var playbackSessionID: String? { get }
  var errorStatusCode: Int { get }
  var errorDomain: String { get }
  var errorComment: String? { get }
}
