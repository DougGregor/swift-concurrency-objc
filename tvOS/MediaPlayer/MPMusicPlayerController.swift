
@available(tvOS 14.0, *)
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
@available(tvOS 14.0, *)
enum MPMusicRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case none
  case one
  case all
}
@available(tvOS 14.0, *)
enum MPMusicShuffleMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case off
  case songs
  case albums
}
protocol MPSystemMusicPlayerController : NSObjectProtocol {
  @available(tvOS 14.0, *)
  func openToPlay(_ queueDescriptor: MPMusicPlayerQueueDescriptor)
}
@available(tvOS 14.0, *)
class MPMusicPlayerController : NSObject, MPMediaPlayback {
  class var applicationMusicPlayer: MPMusicPlayerController { get }
  @available(tvOS 14.0, *)
  class var applicationQueuePlayer: MPMusicPlayerApplicationController { get }
  class var systemMusicPlayer: MPMusicPlayerController & MPSystemMusicPlayerController { get }
  var playbackState: MPMusicPlaybackState { get }
  var repeatMode: MPMusicRepeatMode
  var shuffleMode: MPMusicShuffleMode
  @NSCopying var nowPlayingItem: MPMediaItem?
  @available(tvOS 14.0, *)
  var indexOfNowPlayingItem: Int { get }
  @available(tvOS 14.0, *)
  func setQueue(with storeIDs: [String])
  @available(tvOS 14.0, *)
  func setQueue(with descriptor: MPMusicPlayerQueueDescriptor)
  @available(tvOS 14.0, *)
  func prepend(_ descriptor: MPMusicPlayerQueueDescriptor)
  @available(tvOS 14.0, *)
  func append(_ descriptor: MPMusicPlayerQueueDescriptor)
  @available(tvOS 14.0, *)
  func prepareToPlay(completionHandler: @escaping (Error?) -> Void)
  @available(tvOS 14.0, *)
  func prepareToPlay() async throws
  func skipToNextItem()
  func skipToBeginning()
  func skipToPreviousItem()
  func beginGeneratingPlaybackNotifications()
  func endGeneratingPlaybackNotifications()
}
extension NSNotification.Name {
  @available(tvOS 14.0, *)
  static let MPMusicPlayerControllerPlaybackStateDidChange: NSNotification.Name
  @available(tvOS 14.0, *)
  static let MPMusicPlayerControllerNowPlayingItemDidChange: NSNotification.Name
}
