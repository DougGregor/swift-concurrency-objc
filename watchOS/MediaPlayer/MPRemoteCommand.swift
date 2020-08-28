
@available(watchOS 5.0, *)
enum MPRemoteCommandHandlerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case noSuchContent
  @available(watchOS 2.1, *)
  case noActionableNowPlayingItem
  @available(watchOS 4.0, *)
  case deviceNotFound
  case commandFailed
}
@available(watchOS 5.0, *)
class MPRemoteCommand : NSObject {
  var isEnabled: Bool
  func addTarget(_ target: Any, action: Selector)
  func removeTarget(_ target: Any, action: Selector?)
  func removeTarget(_ target: Any?)
  func addTarget(handler: @escaping (MPRemoteCommandEvent) -> MPRemoteCommandHandlerStatus) -> Any
}
@available(watchOS 5.0, *)
class MPSkipIntervalCommand : MPRemoteCommand {
  var preferredIntervals: [NSNumber]
}
@available(watchOS 5.0, *)
class MPFeedbackCommand : MPRemoteCommand {
  var isActive: Bool
  var localizedTitle: String
  @available(watchOS 2.0, *)
  var localizedShortTitle: String
}
@available(watchOS 5.0, *)
class MPRatingCommand : MPRemoteCommand {
  var minimumRating: Float
  var maximumRating: Float
}
@available(watchOS 5.0, *)
class MPChangePlaybackRateCommand : MPRemoteCommand {
  var supportedPlaybackRates: [NSNumber]
}
@available(watchOS 5.0, *)
class MPChangePlaybackPositionCommand : MPRemoteCommand {
}
@available(watchOS 5.0, *)
class MPChangeShuffleModeCommand : MPRemoteCommand {
  var currentShuffleType: MPShuffleType
}
@available(watchOS 5.0, *)
class MPChangeRepeatModeCommand : MPRemoteCommand {
  var currentRepeatType: MPRepeatType
}
