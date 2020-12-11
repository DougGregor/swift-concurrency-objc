
@available(watchOS 1.0, *)
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
  @available(watchOS 3.0, *)
  var timeControlStatus: AVPlayer.TimeControlStatus { get }
  @available(watchOS 3.0, *)
  var reasonForWaitingToPlay: AVPlayer.WaitingReason? { get }
  @available(watchOS 3.0, *)
  func playImmediately(atRate rate: Float)
}
extension AVPlayer {
  @available(watchOS 3.0, *)
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
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case readyToPlay
    case failed
  }
}
extension AVPlayer.WaitingReason {
  @available(watchOS 3.0, *)
  static let toMinimizeStalls: AVPlayer.WaitingReason
  @available(watchOS 3.0, *)
  static let evaluatingBufferingRate: AVPlayer.WaitingReason
  @available(watchOS 3.0, *)
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
  @available(watchOS 1.0, *)
  func seek(to date: Date, completionHandler: @escaping (Bool) -> Void)
  @available(watchOS 1.0, *)
  func seek(to date: Date) async -> Bool
  func seek(to time: CMTime)
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)
  @available(watchOS 1.0, *)
  func seek(to time: CMTime, completionHandler: @escaping (Bool) -> Void)
  @available(watchOS 1.0, *)
  func seek(to time: CMTime) async -> Bool
  @available(watchOS 1.0, *)
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: @escaping (Bool) -> Void)
  @available(watchOS 1.0, *)
  func seek(to time: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime) async -> Bool
}
extension AVPlayer {
  @available(watchOS 3.0, *)
  var automaticallyWaitsToMinimizeStalling: Bool
  @available(watchOS 1.0, *)
  func setRate(_ rate: Float, time itemTime: CMTime, atHostTime hostClockTime: CMTime)
  @available(watchOS 1.0, *)
  func preroll(atRate rate: Float, completionHandler: ((Bool) -> Void)? = nil)
  @available(watchOS 1.0, *)
  func preroll(atRate rate: Float) async -> Bool
  @available(watchOS 1.0, *)
  func cancelPendingPrerolls()
  @available(watchOS 1.0, *)
  var masterClock: CMClock?
}
extension AVPlayer {
  func addPeriodicTimeObserver(forInterval interval: CMTime, queue: DispatchQueue?, using block: @escaping (CMTime) -> Void) -> Any
  func addBoundaryTimeObserver(forTimes times: [NSValue], queue: DispatchQueue?, using block: @escaping () -> Void) -> Any
  func removeTimeObserver(_ observer: Any)
}
extension AVPlayer {
  @available(watchOS 1.0, *)
  var volume: Float
  @available(watchOS 1.0, *)
  var isMuted: Bool
}
extension AVPlayer {
  @available(watchOS 1.0, *)
  var appliesMediaSelectionCriteriaAutomatically: Bool
  @available(watchOS 1.0, *)
  func setMediaSelectionCriteria(_ criteria: AVPlayerMediaSelectionCriteria?, forMediaCharacteristic mediaCharacteristic: AVMediaCharacteristic)
  @available(watchOS 1.0, *)
  func mediaSelectionCriteria(forMediaCharacteristic mediaCharacteristic: AVMediaCharacteristic) -> AVPlayerMediaSelectionCriteria?
}
extension AVPlayer {
}
extension AVPlayer {
}
extension AVPlayer {
}
extension AVPlayer {
}
extension AVPlayer {
}
extension NSNotification.Name {
}
extension AVPlayer {
}
extension AVPlayer {
}
extension AVPlayer {
}
@available(watchOS 1.0, *)
class AVQueuePlayer : AVPlayer {
  init(items: [AVPlayerItem])
  func items() -> [AVPlayerItem]
  func advanceToNextItem()
  func canInsert(_ item: AVPlayerItem, after afterItem: AVPlayerItem?) -> Bool
  func insert(_ item: AVPlayerItem, after afterItem: AVPlayerItem?)
  func remove(_ item: AVPlayerItem)
  func removeAllItems()
}
