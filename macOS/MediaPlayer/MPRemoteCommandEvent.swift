
@available(macOS 10.12.2, *)
class MPRemoteCommandEvent : NSObject {
  var command: MPRemoteCommand { get }
  var timestamp: TimeInterval { get }
}
@available(macOS 10.12.2, *)
class MPSkipIntervalCommandEvent : MPRemoteCommandEvent {
  var interval: TimeInterval { get }
}
@available(macOS 10.12.2, *)
enum MPSeekCommandEventType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case beginSeeking
  case endSeeking
}
@available(macOS 10.12.2, *)
class MPSeekCommandEvent : MPRemoteCommandEvent {
  var type: MPSeekCommandEventType { get }
}
@available(macOS 10.12.2, *)
class MPRatingCommandEvent : MPRemoteCommandEvent {
  var rating: Float { get }
}
@available(macOS 10.12.2, *)
class MPChangePlaybackRateCommandEvent : MPRemoteCommandEvent {
  var playbackRate: Float { get }
}
@available(macOS 10.12.2, *)
class MPFeedbackCommandEvent : MPRemoteCommandEvent {
  var isNegative: Bool { get }
}
@available(macOS 10.12.2, *)
class MPChangeLanguageOptionCommandEvent : MPRemoteCommandEvent {
  var languageOption: MPNowPlayingInfoLanguageOption { get }
  var setting: MPChangeLanguageOptionSetting { get }
}
@available(macOS 10.12.2, *)
class MPChangePlaybackPositionCommandEvent : MPRemoteCommandEvent {
  var positionTime: TimeInterval { get }
}
@available(macOS 10.12.2, *)
class MPChangeShuffleModeCommandEvent : MPRemoteCommandEvent {
  var shuffleType: MPShuffleType { get }
  var preservesShuffleMode: Bool { get }
}
@available(macOS 10.12.2, *)
class MPChangeRepeatModeCommandEvent : MPRemoteCommandEvent {
  var repeatType: MPRepeatType { get }
  var preservesRepeatMode: Bool { get }
}
