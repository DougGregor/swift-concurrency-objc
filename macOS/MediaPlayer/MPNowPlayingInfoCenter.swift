
@available(macOS 10.12.2, *)
enum MPNowPlayingInfoMediaType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case audio
  case video
}
@available(macOS 10.12.2, *)
enum MPNowPlayingPlaybackState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unknown
  case playing
  case paused
  case stopped
  case interrupted
}
@available(macOS 10.12.2, *)
class MPNowPlayingInfoCenter : NSObject {
  class func `default`() -> MPNowPlayingInfoCenter
  var nowPlayingInfo: [String : Any]?
  @available(macOS 10.12.2, *)
  var playbackState: MPNowPlayingPlaybackState
}
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyElapsedPlaybackTime: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyPlaybackRate: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyDefaultPlaybackRate: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyPlaybackQueueIndex: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyPlaybackQueueCount: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyChapterNumber: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyChapterCount: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyIsLiveStream: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyAvailableLanguageOptions: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyCurrentLanguageOptions: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoCollectionIdentifier: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyExternalContentIdentifier: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyExternalUserProfileIdentifier: String
@available(macOS 10.13, *)
let MPNowPlayingInfoPropertyServiceIdentifier: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyPlaybackProgress: String
@available(macOS 10.12.2, *)
let MPNowPlayingInfoPropertyMediaType: String
@available(macOS 10.12.3, *)
let MPNowPlayingInfoPropertyAssetURL: String
@available(macOS 10.13.1, *)
let MPNowPlayingInfoPropertyCurrentPlaybackDate: String
