
@available(tvOS 7.1, *)
class MPRemoteCommandEvent : NSObject {
  var command: MPRemoteCommand { get }
  var timestamp: TimeInterval { get }
}
@available(tvOS 7.1, *)
class MPSkipIntervalCommandEvent : MPRemoteCommandEvent {
  var interval: TimeInterval { get }
}
@available(tvOS 7.1, *)
enum MPSeekCommandEventType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case beginSeeking
  case endSeeking
}
@available(tvOS 7.1, *)
class MPSeekCommandEvent : MPRemoteCommandEvent {
  var type: MPSeekCommandEventType { get }
}
@available(tvOS 7.1, *)
class MPRatingCommandEvent : MPRemoteCommandEvent {
  var rating: Float { get }
}
@available(tvOS 7.1, *)
class MPChangePlaybackRateCommandEvent : MPRemoteCommandEvent {
  var playbackRate: Float { get }
}
@available(tvOS 7.1, *)
class MPFeedbackCommandEvent : MPRemoteCommandEvent {
  var isNegative: Bool { get }
}
@available(tvOS 9.0, *)
class MPChangeLanguageOptionCommandEvent : MPRemoteCommandEvent {
  var languageOption: MPNowPlayingInfoLanguageOption { get }
  var setting: MPChangeLanguageOptionSetting { get }
}
@available(tvOS 8.0, *)
class MPChangePlaybackPositionCommandEvent : MPRemoteCommandEvent {
  var positionTime: TimeInterval { get }
}
@available(tvOS 8.0, *)
class MPChangeShuffleModeCommandEvent : MPRemoteCommandEvent {
  var shuffleType: MPShuffleType { get }
  var preservesShuffleMode: Bool { get }
}
@available(tvOS 8.0, *)
class MPChangeRepeatModeCommandEvent : MPRemoteCommandEvent {
  var repeatType: MPRepeatType { get }
  var preservesRepeatMode: Bool { get }
}
