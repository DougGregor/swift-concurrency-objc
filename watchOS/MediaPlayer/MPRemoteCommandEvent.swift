
@available(watchOS 5.0, *)
class MPRemoteCommandEvent : NSObject {
  var command: MPRemoteCommand { get }
  var timestamp: TimeInterval { get }
}
@available(watchOS 5.0, *)
class MPSkipIntervalCommandEvent : MPRemoteCommandEvent {
  var interval: TimeInterval { get }
}
@available(watchOS 5.0, *)
enum MPSeekCommandEventType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case beginSeeking
  case endSeeking
}
@available(watchOS 5.0, *)
class MPSeekCommandEvent : MPRemoteCommandEvent {
  var type: MPSeekCommandEventType { get }
}
@available(watchOS 5.0, *)
class MPRatingCommandEvent : MPRemoteCommandEvent {
  var rating: Float { get }
}
@available(watchOS 5.0, *)
class MPChangePlaybackRateCommandEvent : MPRemoteCommandEvent {
  var playbackRate: Float { get }
}
@available(watchOS 5.0, *)
class MPFeedbackCommandEvent : MPRemoteCommandEvent {
  var isNegative: Bool { get }
}
@available(watchOS 5.0, *)
class MPChangeLanguageOptionCommandEvent : MPRemoteCommandEvent {
  var languageOption: MPNowPlayingInfoLanguageOption { get }
  var setting: MPChangeLanguageOptionSetting { get }
}
@available(watchOS 5.0, *)
class MPChangePlaybackPositionCommandEvent : MPRemoteCommandEvent {
  var positionTime: TimeInterval { get }
}
@available(watchOS 5.0, *)
class MPChangeShuffleModeCommandEvent : MPRemoteCommandEvent {
  var shuffleType: MPShuffleType { get }
  var preservesShuffleMode: Bool { get }
}
@available(watchOS 5.0, *)
class MPChangeRepeatModeCommandEvent : MPRemoteCommandEvent {
  var repeatType: MPRepeatType { get }
  var preservesRepeatMode: Bool { get }
}
