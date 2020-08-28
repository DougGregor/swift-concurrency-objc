
@available(tvOS 14.0, *)
class INPlayMediaIntent : INIntent {
  @available(tvOS 13.0, *)
  init(__mediaItems mediaItems: [INMediaItem]?, mediaContainer: INMediaItem?, playShuffled: NSNumber?, playbackRepeatMode: INPlaybackRepeatMode, resumePlayback: NSNumber?, playbackQueueLocation: INPlaybackQueueLocation, playbackSpeed: NSNumber?, mediaSearch: INMediaSearch?)
  var mediaItems: [INMediaItem]? { get }
  @NSCopying var mediaContainer: INMediaItem? { get }
  @NSCopying var __playShuffled: NSNumber? { get }
  var playbackRepeatMode: INPlaybackRepeatMode { get }
  @NSCopying var __resumePlayback: NSNumber? { get }
  @available(tvOS 13.0, *)
  var playbackQueueLocation: INPlaybackQueueLocation { get }
  @available(tvOS 13.0, *)
  @NSCopying var __playbackSpeed: NSNumber? { get }
  @available(tvOS 13.0, *)
  @NSCopying var mediaSearch: INMediaSearch? { get }
}

@available(macOS 10.15, iOS 12.0, watchOS 5.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INPlayMediaIntent {
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
  @nonobjc convenience init(mediaItems: [INMediaItem]? = nil, mediaContainer: INMediaItem? = nil, playShuffled: Bool? = nil, playbackRepeatMode: INPlaybackRepeatMode = .unknown, resumePlayback: Bool? = nil, playbackQueueLocation: INPlaybackQueueLocation = .unknown, playbackSpeed: Double? = nil, mediaSearch: INMediaSearch? = nil)
  @nonobjc final var playShuffled: Bool? { get }
  @nonobjc final var resumePlayback: Bool? { get }
  @available(iOS 13.0, watchOS 6.0, *)
  @nonobjc final var playbackSpeed: Double? { get }
}
@available(tvOS 14.0, *)
protocol INPlayMediaIntentHandling : NSObjectProtocol {
  func handle(intent: INPlayMediaIntent, completion: @escaping (INPlayMediaIntentResponse) -> Void)
  func handle(intent: INPlayMediaIntent) async -> INPlayMediaIntentResponse
  optional func confirm(intent: INPlayMediaIntent, completion: @escaping (INPlayMediaIntentResponse) -> Void)
  optional func confirm(intent: INPlayMediaIntent) async -> INPlayMediaIntentResponse
  @available(tvOS 13.0, *)
  optional func resolveMediaItems(for intent: INPlayMediaIntent, with completion: @escaping ([INPlayMediaMediaItemResolutionResult]) -> Void)
  @available(tvOS 13.0, *)
  optional func resolveMediaItems(for intent: INPlayMediaIntent) async -> [INPlayMediaMediaItemResolutionResult]
  @available(tvOS 13.0, *)
  optional func resolvePlayShuffled(for intent: INPlayMediaIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  @available(tvOS 13.0, *)
  optional func resolvePlayShuffled(for intent: INPlayMediaIntent) async -> INBooleanResolutionResult
  @available(tvOS 13.0, *)
  optional func resolvePlaybackRepeatMode(for intent: INPlayMediaIntent, with completion: @escaping (INPlaybackRepeatModeResolutionResult) -> Void)
  @available(tvOS 13.0, *)
  optional func resolvePlaybackRepeatMode(for intent: INPlayMediaIntent) async -> INPlaybackRepeatModeResolutionResult
  @available(tvOS 13.0, *)
  optional func resolveResumePlayback(for intent: INPlayMediaIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  @available(tvOS 13.0, *)
  optional func resolveResumePlayback(for intent: INPlayMediaIntent) async -> INBooleanResolutionResult
  @available(tvOS 13.0, *)
  optional func resolvePlaybackQueueLocation(for intent: INPlayMediaIntent, with completion: @escaping (INPlaybackQueueLocationResolutionResult) -> Void)
  @available(tvOS 13.0, *)
  optional func resolvePlaybackQueueLocation(for intent: INPlayMediaIntent) async -> INPlaybackQueueLocationResolutionResult
  @available(tvOS 13.0, *)
  optional func resolvePlaybackSpeed(for intent: INPlayMediaIntent, with completion: @escaping (INPlayMediaPlaybackSpeedResolutionResult) -> Void)
  @available(tvOS 13.0, *)
  optional func resolvePlaybackSpeed(for intent: INPlayMediaIntent) async -> INPlayMediaPlaybackSpeedResolutionResult
}
