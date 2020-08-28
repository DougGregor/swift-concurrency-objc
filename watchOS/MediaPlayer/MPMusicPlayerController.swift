
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
enum MPMusicRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case none
  case one
  case all
}
@available(watchOS 2.0, *)
enum MPMusicShuffleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case off
  case songs
  case albums
}
protocol MPSystemMusicPlayerController : NSObjectProtocol {
}
@available(watchOS 2.0, *)
class MPMusicPlayerController : NSObject, MPMediaPlayback {
  class var applicationMusicPlayer: MPMusicPlayerController { get }
  @available(watchOS 3.3, *)
  class var applicationQueuePlayer: MPMusicPlayerApplicationController { get }
  class var systemMusicPlayer: MPMusicPlayerController & MPSystemMusicPlayerController { get }
  var playbackState: MPMusicPlaybackState { get }
  var repeatMode: MPMusicRepeatMode
  var shuffleMode: MPMusicShuffleMode
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use MPVolumeView for volume control.")
  var volume: Float
  @NSCopying var nowPlayingItem: MPMediaItem?
  @available(watchOS 2.0, *)
  var indexOfNowPlayingItem: Int { get }
  func setQueue(with query: MPMediaQuery)
  func setQueue(with itemCollection: MPMediaItemCollection)
  @available(watchOS 2.3, *)
  func setQueue(with storeIDs: [String])
  @available(watchOS 3.1, *)
  func setQueue(with descriptor: MPMusicPlayerQueueDescriptor)
  @available(watchOS 3.3, *)
  func prepend(_ descriptor: MPMusicPlayerQueueDescriptor)
  @available(watchOS 3.3, *)
  func append(_ descriptor: MPMusicPlayerQueueDescriptor)
  @available(watchOS 3.1, *)
  func prepareToPlay(completionHandler: @escaping (Error?) -> Void)
  func skipToNextItem()
  func skipToBeginning()
  func skipToPreviousItem()
  func beginGeneratingPlaybackNotifications()
  func endGeneratingPlaybackNotifications()
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  class var iPodMusicPlayer: MPMusicPlayerController { get }
}
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  static let MPMusicPlayerControllerPlaybackStateDidChange: NSNotification.Name
  @available(watchOS 2.0, *)
  static let MPMusicPlayerControllerNowPlayingItemDidChange: NSNotification.Name
  @available(watchOS 2.0, *)
  static let MPMusicPlayerControllerVolumeDidChange: NSNotification.Name
}
