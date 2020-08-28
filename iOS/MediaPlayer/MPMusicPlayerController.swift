
@available(iOS 3.0, *)
enum MPMusicPlaybackState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case stopped
  case playing
  case paused
  case interrupted
  case seekingForward
  case seekingBackward
}
@available(iOS 3.0, *)
enum MPMusicRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case none
  case one
  case all
}
@available(iOS 3.0, *)
enum MPMusicShuffleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case off
  case songs
  case albums
}
protocol MPSystemMusicPlayerController : NSObjectProtocol {
  @available(iOS 11.0, *)
  func openToPlay(_ queueDescriptor: MPMusicPlayerQueueDescriptor)
}
@available(iOS 3.0, *)
class MPMusicPlayerController : NSObject, MPMediaPlayback {
  class var applicationMusicPlayer: MPMusicPlayerController { get }
  @available(iOS 10.3, *)
  class var applicationQueuePlayer: MPMusicPlayerApplicationController { get }
  class var systemMusicPlayer: MPMusicPlayerController & MPSystemMusicPlayerController { get }
  var playbackState: MPMusicPlaybackState { get }
  var repeatMode: MPMusicRepeatMode
  var shuffleMode: MPMusicShuffleMode
  @NSCopying var nowPlayingItem: MPMediaItem?
  @available(iOS 5.0, *)
  var indexOfNowPlayingItem: Int { get }
  func setQueue(with query: MPMediaQuery)
  func setQueue(with itemCollection: MPMediaItemCollection)
  @available(iOS 9.3, *)
  func setQueue(with storeIDs: [String])
  @available(iOS 10.1, *)
  func setQueue(with descriptor: MPMusicPlayerQueueDescriptor)
  @available(iOS 10.3, *)
  func prepend(_ descriptor: MPMusicPlayerQueueDescriptor)
  @available(iOS 10.3, *)
  func append(_ descriptor: MPMusicPlayerQueueDescriptor)
  @available(iOS 10.1, *)
  func prepareToPlay(completionHandler: @escaping (Error?) -> Void)
  func skipToNextItem()
  func skipToBeginning()
  func skipToPreviousItem()
  func beginGeneratingPlaybackNotifications()
  func endGeneratingPlaybackNotifications()
  @available(iOS, introduced: 3.0, deprecated: 8.0)
  class var iPodMusicPlayer: MPMusicPlayerController { get }
}
extension NSNotification.Name {
  @available(iOS 3.0, *)
  static let MPMusicPlayerControllerPlaybackStateDidChange: NSNotification.Name
  @available(iOS 3.0, *)
  static let MPMusicPlayerControllerNowPlayingItemDidChange: NSNotification.Name
  @available(iOS 3.0, *)
  static let MPMusicPlayerControllerVolumeDidChange: NSNotification.Name
}
