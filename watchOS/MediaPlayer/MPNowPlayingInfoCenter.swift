
@available(watchOS 5.0, *)
enum MPNowPlayingInfoMediaType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case audio
  case video
}
@available(watchOS 5.0, *)
enum MPNowPlayingPlaybackState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unknown
  case playing
  case paused
  case stopped
  case interrupted
}
@available(watchOS 5.0, *)
class MPNowPlayingInfoCenter : NSObject {
  class func `default`() -> MPNowPlayingInfoCenter
  var nowPlayingInfo: [String : Any]?
  @available(watchOS 6.0, *)
  var playbackState: MPNowPlayingPlaybackState
}
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyElapsedPlaybackTime: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackRate: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyDefaultPlaybackRate: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackQueueIndex: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackQueueCount: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyChapterNumber: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyChapterCount: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyIsLiveStream: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyAvailableLanguageOptions: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyCurrentLanguageOptions: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoCollectionIdentifier: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyExternalContentIdentifier: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyExternalUserProfileIdentifier: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyServiceIdentifier: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackProgress: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyMediaType: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyAssetURL: String
@available(watchOS 5.0, *)
let MPNowPlayingInfoPropertyCurrentPlaybackDate: String
