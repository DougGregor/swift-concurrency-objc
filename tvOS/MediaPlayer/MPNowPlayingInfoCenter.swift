
@available(tvOS 10.0, *)
enum MPNowPlayingInfoMediaType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case audio
  case video
}
@available(tvOS 11.0, *)
enum MPNowPlayingPlaybackState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unknown
  case playing
  case paused
  case stopped
  case interrupted
}
@available(tvOS 5.0, *)
class MPNowPlayingInfoCenter : NSObject {
  class func `default`() -> MPNowPlayingInfoCenter
  var nowPlayingInfo: [String : Any]?
  @available(tvOS 13.0, *)
  var playbackState: MPNowPlayingPlaybackState
}
@available(tvOS 5.0, *)
let MPNowPlayingInfoPropertyElapsedPlaybackTime: String
@available(tvOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackRate: String
@available(tvOS 8.0, *)
let MPNowPlayingInfoPropertyDefaultPlaybackRate: String
@available(tvOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackQueueIndex: String
@available(tvOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackQueueCount: String
@available(tvOS 5.0, *)
let MPNowPlayingInfoPropertyChapterNumber: String
@available(tvOS 5.0, *)
let MPNowPlayingInfoPropertyChapterCount: String
@available(tvOS 10.0, *)
let MPNowPlayingInfoPropertyIsLiveStream: String
@available(tvOS 9.0, *)
let MPNowPlayingInfoPropertyAvailableLanguageOptions: String
@available(tvOS 9.0, *)
let MPNowPlayingInfoPropertyCurrentLanguageOptions: String
@available(tvOS 9.3, *)
let MPNowPlayingInfoCollectionIdentifier: String
@available(tvOS 10.0, *)
let MPNowPlayingInfoPropertyExternalContentIdentifier: String
@available(tvOS 10.0, *)
let MPNowPlayingInfoPropertyExternalUserProfileIdentifier: String
@available(tvOS 11.0, *)
let MPNowPlayingInfoPropertyServiceIdentifier: String
@available(tvOS 10.0, *)
let MPNowPlayingInfoPropertyPlaybackProgress: String
@available(tvOS 10.0, *)
let MPNowPlayingInfoPropertyMediaType: String
@available(tvOS 10.3, *)
let MPNowPlayingInfoPropertyAssetURL: String
@available(tvOS 11.1, *)
let MPNowPlayingInfoPropertyCurrentPlaybackDate: String
