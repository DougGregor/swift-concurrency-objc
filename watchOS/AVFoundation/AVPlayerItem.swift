
extension NSNotification.Name {
  @available(watchOS 1.0, *)
  static let AVPlayerItemTimeJumped: NSNotification.Name
  @available(watchOS 1.0, *)
  static let AVPlayerItemDidPlayToEndTime: NSNotification.Name
  @available(watchOS 1.0, *)
  static let AVPlayerItemFailedToPlayToEndTime: NSNotification.Name
  @available(watchOS 1.0, *)
  static let AVPlayerItemPlaybackStalled: NSNotification.Name
  @available(watchOS 1.0, *)
  static let AVPlayerItemNewAccessLogEntry: NSNotification.Name
  @available(watchOS 1.0, *)
  static let AVPlayerItemNewErrorLogEntry: NSNotification.Name
}
extension AVPlayerItem {
  @available(watchOS 6.0, *)
  class let recommendedTimeOffsetFromLiveDidChangeNotification: NSNotification.Name
  @available(watchOS 6.0, *)
  class let mediaSelectionDidChangeNotification: NSNotification.Name
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case readyToPlay
    case failed
  }
}
@available(watchOS 1.0, *)
let AVPlayerItemFailedToPlayToEndTimeErrorKey: String
struct AVAudioSpatializationFormats : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var monoAndStereo: AVAudioSpatializationFormats { get }
  static var multichannel: AVAudioSpatializationFormats { get }
  static var monoStereoAndMultichannel: AVAudioSpatializationFormats { get }
}
@available(watchOS 1.0, *)
class AVPlayerItem : NSObject, NSCopying {
  convenience init(url URL: URL)
  convenience init(asset: AVAsset)
  @available(watchOS 1.0, *)
  init(asset: AVAsset, automaticallyLoadedAssetKeys: [String]?)
  var status: AVPlayerItem.Status { get }
  var error: Error? { get }
}
extension AVPlayerItem {
  var asset: AVAsset { get }
  var tracks: [AVPlayerItemTrack] { get }
  @available(watchOS 1.0, *)
  var duration: CMTime { get }
  var presentationSize: CGSize { get }
  @available(watchOS 1.0, *)
  var automaticallyLoadedAssetKeys: [String] { get }
}
extension AVPlayerItem {
  @available(watchOS 1.0, *)
  var canPlayFastForward: Bool { get }
  @available(watchOS 1.0, *)
  var canPlaySlowForward: Bool { get }
  @available(watchOS 1.0, *)
  var canPlayReverse: Bool { get }
  @available(watchOS 1.0, *)
  var canPlaySlowReverse: Bool { get }
  @available(watchOS 1.0, *)
  var canPlayFastReverse: Bool { get }
  @available(watchOS 1.0, *)
  var canStepForward: Bool { get }
  @available(watchOS 1.0, *)
  var canStepBackward: Bool { get }
  @available(watchOS 6.0, *)
  var configuredTimeOffsetFromLive: CMTime
  @available(watchOS 6.0, *)
  var recommendedTimeOffsetFromLive: CMTime { get }
  @available(watchOS 6.0, *)
  var automaticallyPreservesTimeOffsetFromLive: Bool
}
extension AVPlayerItem {
  func currentTime() -> CMTime
  var forwardPlaybackEndTime: CMTime
  var reversePlaybackEndTime: CMTime
  var seekableTimeRanges: [NSValue] { get }
  @available(watchOS 1.0, *)
  func seek(to time: CMTime, completionHandler: ((Bool) -> Void)? = nil)
  @available(watchOS 1.0, *)
  func seek(to time: CMTime) async -> Bool
  @available(watchOS 1.0, *)
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: ((Bool) -> Void)? = nil)
  @available(watchOS 1.0, *)
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime) async -> Bool
  @available(watchOS 1.0, *)
  func cancelPendingSeeks()
  func currentDate() -> Date?
  @available(watchOS 1.0, *)
  func seek(to date: Date, completionHandler: ((Bool) -> Void)? = nil) -> Bool
  func step(byCount stepCount: Int)
  @available(watchOS 1.0, *)
  var timebase: CMTimebase? { get }
}
extension AVPlayerItem {
}
extension AVPlayerItem {
  @available(watchOS 1.0, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
  @NSCopying var audioMix: AVAudioMix?
}
extension AVPlayerItem {
  var loadedTimeRanges: [NSValue] { get }
  var isPlaybackLikelyToKeepUp: Bool { get }
  var isPlaybackBufferFull: Bool { get }
  var isPlaybackBufferEmpty: Bool { get }
  @available(watchOS 2.0, *)
  var canUseNetworkResourcesForLiveStreamingWhilePaused: Bool
  @available(watchOS 3.0, *)
  var preferredForwardBufferDuration: TimeInterval
}
extension AVPlayerItem {
  @available(watchOS 1.0, *)
  var preferredPeakBitRate: Double
  @available(watchOS 7.0, *)
  var startsOnFirstEligibleVariant: Bool
}
extension AVPlayerItem {
  @available(watchOS 1.0, *)
  func select(_ mediaSelectionOption: AVMediaSelectionOption?, in mediaSelectionGroup: AVMediaSelectionGroup)
  @available(watchOS 1.0, *)
  func selectMediaOptionAutomatically(in mediaSelectionGroup: AVMediaSelectionGroup)
  @available(watchOS 2.0, *)
  var currentMediaSelection: AVMediaSelection { get }
}
extension AVPlayerItem {
  @available(watchOS 1.0, *)
  func accessLog() -> AVPlayerItemAccessLog?
  @available(watchOS 1.0, *)
  func errorLog() -> AVPlayerItemErrorLog?
}
extension AVPlayerItem {
  @available(watchOS 1.0, *)
  func add(_ output: AVPlayerItemOutput)
  @available(watchOS 1.0, *)
  func remove(_ output: AVPlayerItemOutput)
  @available(watchOS 1.0, *)
  var outputs: [AVPlayerItemOutput] { get }
}
extension AVPlayerItem {
  @available(watchOS 2.3, *)
  func add(_ collector: AVPlayerItemMediaDataCollector)
  @available(watchOS 2.3, *)
  func remove(_ collector: AVPlayerItemMediaDataCollector)
  @available(watchOS 2.3, *)
  var mediaDataCollectors: [AVPlayerItemMediaDataCollector] { get }
}
extension AVPlayerItem {
}
@available(watchOS 1.0, *)
class AVPlayerItemAccessLog : NSObject, NSCopying {
  func extendedLogData() -> Data?
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AVPlayerItemAccessLogEvent] { get }
}
@available(watchOS 1.0, *)
class AVPlayerItemErrorLog : NSObject, NSCopying {
  func extendedLogData() -> Data?
  var extendedLogDataStringEncoding: UInt { get }
  var events: [AVPlayerItemErrorLogEvent] { get }
}
@available(watchOS 1.0, *)
class AVPlayerItemAccessLogEvent : NSObject, NSCopying {
  @available(watchOS 1.0, *)
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
  @available(watchOS 1.0, *)
  var transferDuration: TimeInterval { get }
  var observedBitrate: Double { get }
  var indicatedBitrate: Double { get }
  @available(watchOS 3.0, *)
  var indicatedAverageBitrate: Double { get }
  @available(watchOS 3.0, *)
  var averageAudioBitrate: Double { get }
  var numberOfDroppedVideoFrames: Int { get }
  @available(watchOS 1.0, *)
  var startupTime: TimeInterval { get }
  @available(watchOS 1.0, *)
  var downloadOverdue: Int { get }
  @available(watchOS 1.0, *)
  var observedMaxBitrate: Double { get }
  @available(watchOS 1.0, *)
  var observedMinBitrate: Double { get }
  @available(watchOS 1.0, *)
  var observedBitrateStandardDeviation: Double { get }
  @available(watchOS 1.0, *)
  var playbackType: String? { get }
  @available(watchOS 1.0, *)
  var mediaRequestsWWAN: Int { get }
  @available(watchOS 1.0, *)
  var switchBitrate: Double { get }
}
@available(watchOS 1.0, *)
class AVPlayerItemErrorLogEvent : NSObject, NSCopying {
  var date: Date? { get }
  var uri: String? { get }
  var serverAddress: String? { get }
  var playbackSessionID: String? { get }
  var errorStatusCode: Int { get }
  var errorDomain: String { get }
  var errorComment: String? { get }
}
