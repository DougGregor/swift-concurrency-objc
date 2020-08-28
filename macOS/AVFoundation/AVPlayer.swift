
@available(macOS 10.7, *)
class AVPlayer : NSObject {
  init(url URL: URL)
  init(playerItem item: AVPlayerItem?)
  var status: AVPlayer.Status { get }
  var error: Error? { get }
}
extension AVPlayer {
  var rate: Float
  func play()
  func pause()
  @available(macOS 10.12, *)
  var timeControlStatus: AVPlayer.TimeControlStatus { get }
  @available(macOS 10.12, *)
  var reasonForWaitingToPlay: AVPlayer.WaitingReason? { get }
  @available(macOS 10.12, *)
  func playImmediately(atRate rate: Float)
}
extension AVPlayer {
  @available(macOS 10.12, *)
  enum TimeControlStatus : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case paused
    case waitingToPlayAtSpecifiedRate
    case playing
  }
  struct WaitingReason : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  enum ActionAtItemEnd : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case advance
    case pause
    case none
  }
  @available(macOS 10.15, *)
  class let eligibleForHDRPlaybackDidChangeNotification: NSNotification.Name
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case readyToPlay
    case failed
  }
}
extension AVPlayer.WaitingReason {
  @available(macOS 10.12, *)
  static let toMinimizeStalls: AVPlayer.WaitingReason
  @available(macOS 10.12, *)
  static let evaluatingBufferingRate: AVPlayer.WaitingReason
  @available(macOS 10.12, *)
  static let noItemToPlay: AVPlayer.WaitingReason
}
extension AVPlayer {
  var currentItem: AVPlayerItem? { get }
  func replaceCurrentItem(with item: AVPlayerItem?)
  var actionAtItemEnd: AVPlayer.ActionAtItemEnd
}
extension AVPlayer {
  func currentTime() -> CMTime
  func seek(to date: Date)
  @available(macOS 10.7, *)
  func seek(to date: Date, completionHandler: @escaping (Bool) -> Void)
  func seek(to time: CMTime)
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)
  @available(macOS 10.7, *)
  func seek(to time: CMTime, completionHandler: @escaping (Bool) -> Void)
  @available(macOS 10.7, *)
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: @escaping (Bool) -> Void)
}
extension AVPlayer {
  @available(macOS 10.12, *)
  var automaticallyWaitsToMinimizeStalling: Bool
  @available(macOS 10.8, *)
  func setRate(_ rate: Float, time itemTime: CMTime, atHostTime hostClockTime: CMTime)
  @available(macOS 10.8, *)
  func preroll(atRate rate: Float, completionHandler: ((Bool) -> Void)? = nil)
  @available(macOS 10.8, *)
  func cancelPendingPrerolls()
  @available(macOS 10.8, *)
  var masterClock: CMClock?
}
extension AVPlayer {
  func addPeriodicTimeObserver(forInterval interval: CMTime, queue: DispatchQueue?, using block: @escaping (CMTime) -> Void) -> Any
  func addBoundaryTimeObserver(forTimes times: [NSValue], queue: DispatchQueue?, using block: @escaping () -> Void) -> Any
  func removeTimeObserver(_ observer: Any)
}
extension AVPlayer {
  @available(macOS 10.7, *)
  var volume: Float
  @available(macOS 10.7, *)
  var isMuted: Bool
}
extension AVPlayer {
  @available(macOS 10.9, *)
  var appliesMediaSelectionCriteriaAutomatically: Bool
  @available(macOS 10.9, *)
  func setMediaSelectionCriteria(_ criteria: AVPlayerMediaSelectionCriteria?, forMediaCharacteristic mediaCharacteristic: AVMediaCharacteristic)
  @available(macOS 10.9, *)
  func mediaSelectionCriteria(forMediaCharacteristic mediaCharacteristic: AVMediaCharacteristic) -> AVPlayerMediaSelectionCriteria?
}
extension AVPlayer {
  @available(macOS 10.9, *)
  var audioOutputDeviceUniqueID: String?
}
extension AVPlayer {
  @available(macOS 10.11, *)
  var allowsExternalPlayback: Bool
  @available(macOS 10.11, *)
  var isExternalPlaybackActive: Bool { get }
}
extension AVPlayer {
  @available(macOS 10.12, *)
  var isOutputObscuredDueToInsufficientExternalProtection: Bool { get }
}
extension AVPlayer {
  @available(macOS 10.15, *)
  class var eligibleForHDRPlayback: Bool { get }
}
extension NSNotification.Name {
}
extension AVPlayer {
  @available(macOS 10.13, *)
  var preferredVideoDecoderGPURegistryID: UInt64
}
extension AVPlayer {
  @available(macOS 10.14, *)
  var preventsDisplaySleepDuringVideoPlayback: Bool
}
extension AVPlayer {
  @available(macOS, introduced: 10.7, deprecated: 10.13, message: "Allow AVPlayer to enable closed captions automatically according to user preferences by ensuring that the value of appliesMediaSelectionCriteriaAutomatically is YES.")
  var isClosedCaptionDisplayEnabled: Bool
}
@available(macOS 10.7, *)
class AVQueuePlayer : AVPlayer {
  init(items: [AVPlayerItem])
  func items() -> [AVPlayerItem]
  func advanceToNextItem()
  func canInsert(_ item: AVPlayerItem, after afterItem: AVPlayerItem?) -> Bool
  func insert(_ item: AVPlayerItem, after afterItem: AVPlayerItem?)
  func remove(_ item: AVPlayerItem)
  func removeAllItems()
}
