
@available(tvOS 9.0, *)
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
  @available(tvOS 10.0, *)
  var timeControlStatus: AVPlayer.TimeControlStatus { get }
  @available(tvOS 10.0, *)
  var reasonForWaitingToPlay: AVPlayer.WaitingReason? { get }
  @available(tvOS 10.0, *)
  func playImmediately(atRate rate: Float)
}
extension AVPlayer {
  @available(tvOS 10.0, *)
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
  @available(tvOS 11.2, *)
  struct HDRMode : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    static var hlg: AVPlayer.HDRMode { get }
    static var hdr10: AVPlayer.HDRMode { get }
    static var dolbyVision: AVPlayer.HDRMode { get }
  }
  @available(tvOS 13.4, *)
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
  @available(tvOS 10.0, *)
  static let toMinimizeStalls: AVPlayer.WaitingReason
  @available(tvOS 10.0, *)
  static let evaluatingBufferingRate: AVPlayer.WaitingReason
  @available(tvOS 10.0, *)
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
  @available(tvOS 9.0, *)
  func seek(to date: Date, completionHandler: @escaping (Bool) -> Void)
  func seek(to time: CMTime)
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)
  @available(tvOS 9.0, *)
  func seek(to time: CMTime, completionHandler: @escaping (Bool) -> Void)
  @available(tvOS 9.0, *)
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: @escaping (Bool) -> Void)
}
extension AVPlayer {
  @available(tvOS 10.0, *)
  var automaticallyWaitsToMinimizeStalling: Bool
  @available(tvOS 9.0, *)
  func setRate(_ rate: Float, time itemTime: CMTime, atHostTime hostClockTime: CMTime)
  @available(tvOS 9.0, *)
  func preroll(atRate rate: Float, completionHandler: ((Bool) -> Void)? = nil)
  @available(tvOS 9.0, *)
  func cancelPendingPrerolls()
  @available(tvOS 9.0, *)
  var masterClock: CMClock?
}
extension AVPlayer {
  func addPeriodicTimeObserver(forInterval interval: CMTime, queue: DispatchQueue?, using block: @escaping (CMTime) -> Void) -> Any
  func addBoundaryTimeObserver(forTimes times: [NSValue], queue: DispatchQueue?, using block: @escaping () -> Void) -> Any
  func removeTimeObserver(_ observer: Any)
}
extension AVPlayer {
  @available(tvOS 9.0, *)
  var volume: Float
  @available(tvOS 9.0, *)
  var isMuted: Bool
}
extension AVPlayer {
  @available(tvOS 9.0, *)
  var appliesMediaSelectionCriteriaAutomatically: Bool
  @available(tvOS 9.0, *)
  func setMediaSelectionCriteria(_ criteria: AVPlayerMediaSelectionCriteria?, forMediaCharacteristic mediaCharacteristic: AVMediaCharacteristic)
  @available(tvOS 9.0, *)
  func mediaSelectionCriteria(forMediaCharacteristic mediaCharacteristic: AVMediaCharacteristic) -> AVPlayerMediaSelectionCriteria?
}
extension AVPlayer {
}
extension AVPlayer {
  @available(tvOS 9.0, *)
  var allowsExternalPlayback: Bool
  @available(tvOS 9.0, *)
  var isExternalPlaybackActive: Bool { get }
  @available(tvOS 9.0, *)
  var usesExternalPlaybackWhileExternalScreenIsActive: Bool
  @available(tvOS 9.0, *)
  var externalPlaybackVideoGravity: AVLayerVideoGravity
}
extension AVPlayer {
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "No longer supported")
  var allowsAirPlayVideo: Bool
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "No longer supported")
  var isAirPlayVideoActive: Bool { get }
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "No longer supported")
  var usesAirPlayVideoWhileAirPlayScreenIsActive: Bool
}
extension AVPlayer {
  @available(tvOS 9.0, *)
  var isOutputObscuredDueToInsufficientExternalProtection: Bool { get }
}
extension AVPlayer {
  @available(tvOS 11.2, *)
  class var availableHDRModes: AVPlayer.HDRMode { get }
  @available(tvOS 13.4, *)
  class var eligibleForHDRPlayback: Bool { get }
}
extension NSNotification.Name {
  @available(tvOS 11.2, *)
  static let AVPlayerAvailableHDRModesDidChange: NSNotification.Name
}
extension AVPlayer {
}
extension AVPlayer {
  @available(tvOS 12.0, *)
  var preventsDisplaySleepDuringVideoPlayback: Bool
}
extension AVPlayer {
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Allow AVPlayer to enable closed captions automatically according to user preferences by ensuring that the value of appliesMediaSelectionCriteriaAutomatically is YES.")
  var isClosedCaptionDisplayEnabled: Bool
}
@available(tvOS 9.0, *)
class AVQueuePlayer : AVPlayer {
  init(items: [AVPlayerItem])
  func items() -> [AVPlayerItem]
  func advanceToNextItem()
  func canInsert(_ item: AVPlayerItem, after afterItem: AVPlayerItem?) -> Bool
  func insert(_ item: AVPlayerItem, after afterItem: AVPlayerItem?)
  func remove(_ item: AVPlayerItem)
  func removeAllItems()
}
