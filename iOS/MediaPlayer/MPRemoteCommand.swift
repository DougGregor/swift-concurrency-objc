
@available(iOS 7.1, *)
enum MPRemoteCommandHandlerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case noSuchContent
  @available(iOS 9.1, *)
  case noActionableNowPlayingItem
  @available(iOS 11.0, *)
  case deviceNotFound
  case commandFailed
}
@available(iOS 7.1, *)
class MPRemoteCommand : NSObject {
  var isEnabled: Bool
  func addTarget(_ target: Any, action: Selector)
  func removeTarget(_ target: Any, action: Selector?)
  func removeTarget(_ target: Any?)
  func addTarget(handler: @escaping (MPRemoteCommandEvent) -> MPRemoteCommandHandlerStatus) -> Any
}
@available(iOS 7.1, *)
class MPSkipIntervalCommand : MPRemoteCommand {
  var preferredIntervals: [NSNumber]
}
@available(iOS 7.1, *)
class MPFeedbackCommand : MPRemoteCommand {
  var isActive: Bool
  var localizedTitle: String
  @available(iOS 8.0, *)
  var localizedShortTitle: String
}
@available(iOS 7.1, *)
class MPRatingCommand : MPRemoteCommand {
  var minimumRating: Float
  var maximumRating: Float
}
@available(iOS 7.1, *)
class MPChangePlaybackRateCommand : MPRemoteCommand {
  var supportedPlaybackRates: [NSNumber]
}
@available(iOS 9.0, *)
class MPChangePlaybackPositionCommand : MPRemoteCommand {
}
@available(iOS 8.0, *)
class MPChangeShuffleModeCommand : MPRemoteCommand {
  var currentShuffleType: MPShuffleType
}
@available(iOS 8.0, *)
class MPChangeRepeatModeCommand : MPRemoteCommand {
  var currentRepeatType: MPRepeatType
}
