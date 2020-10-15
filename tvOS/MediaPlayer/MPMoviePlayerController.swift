
@available(tvOS, unavailable)
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMovieScalingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case none
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case aspectFit
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case aspectFill
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case fill
}
@available(tvOS, unavailable)
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMoviePlaybackState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case stopped
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case playing
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case paused
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case interrupted
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case seekingForward
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case seekingBackward
}
@available(tvOS, unavailable)
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
struct MPMovieLoadState : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static var playable: MPMovieLoadState { get }
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static var playthroughOK: MPMovieLoadState { get }
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static var stalled: MPMovieLoadState { get }
}
@available(tvOS, unavailable)
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMovieRepeatMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case none
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case one
}
@available(tvOS, unavailable)
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMovieControlStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case none
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case embedded
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case fullscreen
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static var `default`: MPMovieControlStyle { get }
}
@available(tvOS, unavailable)
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMovieFinishReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case playbackEnded
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case playbackError
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case userExited
}
@available(tvOS, unavailable)
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
struct MPMovieMediaTypeMask : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static var video: MPMovieMediaTypeMask { get }
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static var audio: MPMovieMediaTypeMask { get }
}
@available(tvOS, unavailable)
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMovieSourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case unknown
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case file
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case streaming
}
extension NSNotification.Name {
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerScalingModeDidChange: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerPlaybackDidFinish: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerPlaybackStateDidChange: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerLoadStateDidChange: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerNowPlayingMovieDidChange: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerWillEnterFullscreen: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerDidEnterFullscreen: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerWillExitFullscreen: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerDidExitFullscreen: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerIsAirPlayVideoActiveDidChange: NSNotification.Name
  @available(tvOS, introduced: 6.0, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit.")
  static let MPMoviePlayerReadyForDisplayDidChange: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMovieMediaTypesAvailable: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMovieSourceTypeAvailable: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMovieDurationAvailable: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMovieNaturalSizeAvailable: NSNotification.Name
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  static let MPMoviePlayerThumbnailImageRequestDidFinish: NSNotification.Name
  @available(tvOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
  static let MPMoviePlayerTimedMetadataUpdated: NSNotification.Name
}
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
let MPMoviePlayerPlaybackDidFinishReasonUserInfoKey: String
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
let MPMoviePlayerFullscreenAnimationDurationUserInfoKey: String
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
let MPMoviePlayerFullscreenAnimationCurveUserInfoKey: String
@available(tvOS, unavailable)
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
enum MPMovieTimeOption : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case nearestKeyFrame
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
  case exact
}
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
let MPMoviePlayerThumbnailImageKey: String
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
let MPMoviePlayerThumbnailTimeKey: String
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit")
let MPMoviePlayerThumbnailErrorKey: String
@available(tvOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
let MPMoviePlayerTimedMetadataUserInfoKey: String
@available(tvOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
let MPMoviePlayerTimedMetadataKeyName: String
@available(tvOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
let MPMoviePlayerTimedMetadataKeyInfo: String
@available(tvOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
let MPMoviePlayerTimedMetadataKeyMIMEType: String
@available(tvOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
let MPMoviePlayerTimedMetadataKeyDataType: String
@available(tvOS, introduced: 4.0, deprecated: 9.0, message: "Use AVFoundation.")
let MPMoviePlayerTimedMetadataKeyLanguageCode: String
