
@available(iOS 10.0, *)
enum MPNowPlayingInfoMediaType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case audio
  case video
}
@available(iOS 11.0, *)
enum MPNowPlayingPlaybackState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unknown
  case playing
  case paused
  case stopped
  case interrupted
}
@available(iOS 5.0, *)
class MPNowPlayingInfoCenter : NSObject {
  class func `default`() -> MPNowPlayingInfoCenter
  var nowPlayingInfo: [String : Any]?
  @available(iOS 13.0, *)
  var playbackState: MPNowPlayingPlaybackState
}
@available(iOS 5.0, *)
let MPNowPlayingInfoPropertyElapsedPlaybackTime: String
@available(iOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackRate: String
@available(iOS 8.0, *)
let MPNowPlayingInfoPropertyDefaultPlaybackRate: String
@available(iOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackQueueIndex: String
@available(iOS 5.0, *)
let MPNowPlayingInfoPropertyPlaybackQueueCount: String
@available(iOS 5.0, *)
let MPNowPlayingInfoPropertyChapterNumber: String
@available(iOS 5.0, *)
let MPNowPlayingInfoPropertyChapterCount: String
@available(iOS 10.0, *)
let MPNowPlayingInfoPropertyIsLiveStream: String
@available(iOS 9.0, *)
let MPNowPlayingInfoPropertyAvailableLanguageOptions: String
@available(iOS 9.0, *)
let MPNowPlayingInfoPropertyCurrentLanguageOptions: String
@available(iOS 9.3, *)
let MPNowPlayingInfoCollectionIdentifier: String
@available(iOS 10.0, *)
let MPNowPlayingInfoPropertyExternalContentIdentifier: String
@available(iOS 10.0, *)
let MPNowPlayingInfoPropertyExternalUserProfileIdentifier: String
@available(iOS 11.0, *)
let MPNowPlayingInfoPropertyServiceIdentifier: String
@available(iOS 10.0, *)
let MPNowPlayingInfoPropertyPlaybackProgress: String
@available(iOS 10.0, *)
let MPNowPlayingInfoPropertyMediaType: String
@available(iOS 10.3, *)
let MPNowPlayingInfoPropertyAssetURL: String
@available(iOS 11.1, *)
let MPNowPlayingInfoPropertyCurrentPlaybackDate: String
