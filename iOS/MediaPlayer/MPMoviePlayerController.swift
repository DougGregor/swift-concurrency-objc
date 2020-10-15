
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMovieScalingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case none
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case aspectFit
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case aspectFill
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case fill
}
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMoviePlaybackState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case stopped
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case playing
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case paused
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case interrupted
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case seekingForward
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case seekingBackward
}
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
struct MPMovieLoadState : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static var playable: MPMovieLoadState { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static var playthroughOK: MPMovieLoadState { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static var stalled: MPMovieLoadState { get }
}
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMovieRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case none
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case one
}
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMovieControlStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case none
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case embedded
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case fullscreen
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static var `default`: MPMovieControlStyle { get }
}
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMovieFinishReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case playbackEnded
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case playbackError
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case userExited
}
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
struct MPMovieMediaTypeMask : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static var video: MPMovieMediaTypeMask { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static var audio: MPMovieMediaTypeMask { get }
}
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMovieSourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case unknown
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case file
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case streaming
}
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
class MPMoviePlayerController : NSObject, MPMediaPlayback {
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  init!(contentURL url: URL!)
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var contentURL: URL!
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var view: UIView! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var backgroundView: UIView! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var playbackState: MPMoviePlaybackState { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var loadState: MPMovieLoadState { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var controlStyle: MPMovieControlStyle
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var repeatMode: MPMovieRepeatMode
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var shouldAutoplay: Bool
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var isFullscreen: Bool
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  func setFullscreen(_ fullscreen: Bool, animated: Bool)
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var scalingMode: MPMovieScalingMode
  @available(iOS 6.0, *)
  var readyForDisplay: Bool { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var movieMediaTypes: MPMovieMediaTypeMask { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var movieSourceType: MPMovieSourceType
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var duration: TimeInterval { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var playableDuration: TimeInterval { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var naturalSize: CGSize { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var initialPlaybackTime: TimeInterval
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var endPlaybackTime: TimeInterval
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var allowsAirPlay: Bool
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var isAirPlayVideoActive: Bool { get }
}
extension NSNotification.Name {
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerScalingModeDidChange: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerPlaybackDidFinish: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerPlaybackStateDidChange: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerLoadStateDidChange: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerNowPlayingMovieDidChange: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerWillEnterFullscreen: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerDidEnterFullscreen: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerWillExitFullscreen: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerDidExitFullscreen: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerIsAirPlayVideoActiveDidChange: NSNotification.Name
  @available(iOS, introduced: 6.0, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit.")
  static let MPMoviePlayerReadyForDisplayDidChange: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMovieMediaTypesAvailable: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMovieSourceTypeAvailable: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMovieDurationAvailable: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMovieNaturalSizeAvailable: NSNotification.Name
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerThumbnailImageRequestDidFinish: NSNotification.Name
  @available(iOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
  static let MPMoviePlayerTimedMetadataUpdated: NSNotification.Name
}
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
let MPMoviePlayerPlaybackDidFinishReasonUserInfoKey: String
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
let MPMoviePlayerFullscreenAnimationDurationUserInfoKey: String
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
let MPMoviePlayerFullscreenAnimationCurveUserInfoKey: String
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMovieTimeOption : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case nearestKeyFrame
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case exact
}
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
extension MPMoviePlayerController {
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  func thumbnailImage(atTime playbackTime: TimeInterval, timeOption option: MPMovieTimeOption) -> UIImage!
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  func requestThumbnailImages(atTimes playbackTimes: [Any]!, timeOption option: MPMovieTimeOption)
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  func cancelAllThumbnailImageRequests()
}
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
let MPMoviePlayerThumbnailImageKey: String
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
let MPMoviePlayerThumbnailTimeKey: String
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
let MPMoviePlayerThumbnailErrorKey: String
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
extension MPMoviePlayerController {
  @available(iOS, introduced: 4.0, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit.")
  var timedMetadata: [Any]! { get }
}
@available(iOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
class MPTimedMetadata : NSObject {
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var key: String! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var keyspace: String! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var value: Any! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var timestamp: TimeInterval { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var allMetadata: [AnyHashable : Any]! { get }
}
@available(iOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
let MPMoviePlayerTimedMetadataUserInfoKey: String
@available(iOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
let MPMoviePlayerTimedMetadataKeyName: String
@available(iOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
let MPMoviePlayerTimedMetadataKeyInfo: String
@available(iOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
let MPMoviePlayerTimedMetadataKeyMIMEType: String
@available(iOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
let MPMoviePlayerTimedMetadataKeyDataType: String
@available(iOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
let MPMoviePlayerTimedMetadataKeyLanguageCode: String
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
extension MPMoviePlayerController {
  @available(iOS, introduced: 4.3, deprecated: 9.0, message: "Use AVFoundation.")
  var accessLog: MPMovieAccessLog! { get }
  @available(iOS, introduced: 4.3, deprecated: 9.0, message: "Use AVFoundation.")
  var errorLog: MPMovieErrorLog! { get }
}
@available(iOS, introduced: 4.3, deprecated: 9.0, message: "Use AVFoundation.")
class MPMovieAccessLog : NSObject, NSCopying {
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var extendedLogData: Data! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var extendedLogDataStringEncoding: UInt { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var events: [Any]! { get }
}
@available(iOS, introduced: 4.3, deprecated: 9.0, message: "Use AVFoundation.")
class MPMovieErrorLog : NSObject, NSCopying {
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var extendedLogData: Data! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var extendedLogDataStringEncoding: UInt { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var events: [Any]! { get }
}
@available(iOS, introduced: 4.3, deprecated: 9.0, message: "Use AVFoundation.")
class MPMovieAccessLogEvent : NSObject, NSCopying {
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var numberOfSegmentsDownloaded: Int { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var playbackStartDate: Date! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var uri: String! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var serverAddress: String! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var numberOfServerAddressChanges: Int { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var playbackSessionID: String! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var playbackStartOffset: TimeInterval { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var segmentsDownloadedDuration: TimeInterval { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var durationWatched: TimeInterval { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var numberOfStalls: Int { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var numberOfBytesTransferred: Int64 { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var observedBitrate: Double { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var indicatedBitrate: Double { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var numberOfDroppedVideoFrames: Int { get }
}
@available(iOS, introduced: 4.3, deprecated: 9.0, message: "Use AVFoundation.")
class MPMovieErrorLogEvent : NSObject, NSCopying {
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var date: Date! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var uri: String! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var serverAddress: String! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var playbackSessionID: String! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var errorStatusCode: Int { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var errorDomain: String! { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  var errorComment: String! { get }
}
@available(iOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
extension MPMoviePlayerController {
  @available(iOS, introduced: 6.0, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit.")
  var useApplicationAudioSession: Bool
}
