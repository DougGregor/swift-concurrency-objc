
@available(macOS 10.12.2, *)
enum MPRemoteCommandHandlerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case noSuchContent
  @available(macOS 10.12.2, *)
  case noActionableNowPlayingItem
  @available(macOS 10.13, *)
  case deviceNotFound
  case commandFailed
}
@available(macOS 10.12.2, *)
class MPRemoteCommand : NSObject {
  var isEnabled: Bool
  func addTarget(_ target: Any, action: Selector)
  func removeTarget(_ target: Any, action: Selector?)
  func removeTarget(_ target: Any?)
  func addTarget(handler: @escaping (MPRemoteCommandEvent) -> MPRemoteCommandHandlerStatus) -> Any
}
@available(macOS 10.12.2, *)
class MPSkipIntervalCommand : MPRemoteCommand {
  var preferredIntervals: [NSNumber]
}
@available(macOS 10.12.2, *)
class MPFeedbackCommand : MPRemoteCommand {
  var isActive: Bool
  var localizedTitle: String
  var localizedShortTitle: String
}
@available(macOS 10.12.2, *)
class MPRatingCommand : MPRemoteCommand {
  var minimumRating: Float
  var maximumRating: Float
}
@available(macOS 10.12.2, *)
class MPChangePlaybackRateCommand : MPRemoteCommand {
  var supportedPlaybackRates: [NSNumber]
}
@available(macOS 10.12.2, *)
class MPChangePlaybackPositionCommand : MPRemoteCommand {
}
@available(macOS 10.12.2, *)
class MPChangeShuffleModeCommand : MPRemoteCommand {
  var currentShuffleType: MPShuffleType
}
@available(macOS 10.12.2, *)
class MPChangeRepeatModeCommand : MPRemoteCommand {
  var currentRepeatType: MPRepeatType
}
