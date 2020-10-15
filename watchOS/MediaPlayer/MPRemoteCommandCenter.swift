
@available(watchOS 5.0, *)
class MPRemoteCommandCenter : NSObject {
  var pauseCommand: MPRemoteCommand { get }
  var playCommand: MPRemoteCommand { get }
  var stopCommand: MPRemoteCommand { get }
  var togglePlayPauseCommand: MPRemoteCommand { get }
  @available(watchOS 2.0, *)
  var enableLanguageOptionCommand: MPRemoteCommand { get }
  @available(watchOS 2.0, *)
  var disableLanguageOptionCommand: MPRemoteCommand { get }
  var changePlaybackRateCommand: MPChangePlaybackRateCommand { get }
  var changeRepeatModeCommand: MPChangeRepeatModeCommand { get }
  var changeShuffleModeCommand: MPChangeShuffleModeCommand { get }
  var nextTrackCommand: MPRemoteCommand { get }
  var previousTrackCommand: MPRemoteCommand { get }
  var skipForwardCommand: MPSkipIntervalCommand { get }
  var skipBackwardCommand: MPSkipIntervalCommand { get }
  var seekForwardCommand: MPRemoteCommand { get }
  var seekBackwardCommand: MPRemoteCommand { get }
  @available(watchOS 2.1, *)
  var changePlaybackPositionCommand: MPChangePlaybackPositionCommand { get }
  var ratingCommand: MPRatingCommand { get }
  var likeCommand: MPFeedbackCommand { get }
  var dislikeCommand: MPFeedbackCommand { get }
  var bookmarkCommand: MPFeedbackCommand { get }
  class func shared() -> MPRemoteCommandCenter
}
