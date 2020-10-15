
@available(tvOS 14.0, *)
class INAddMediaIntent : INIntent {
  init(mediaItems: [INMediaItem]?, mediaSearch: INMediaSearch?, mediaDestination: INMediaDestination?)
  var mediaItems: [INMediaItem]? { get }
  @NSCopying var mediaSearch: INMediaSearch? { get }
  var mediaDestination: INMediaDestination? { get }
}
@available(tvOS 14.0, *)
protocol INAddMediaIntentHandling : NSObjectProtocol {
  func handle(intent: INAddMediaIntent, completion: @escaping (INAddMediaIntentResponse) -> Void)
  func handle(intent: INAddMediaIntent) async -> INAddMediaIntentResponse
  optional func confirm(intent: INAddMediaIntent, completion: @escaping (INAddMediaIntentResponse) -> Void)
  optional func confirm(intent: INAddMediaIntent) async -> INAddMediaIntentResponse
  optional func resolveMediaItems(for intent: INAddMediaIntent, with completion: @escaping ([INAddMediaMediaItemResolutionResult]) -> Void)
  optional func resolveMediaItems(for intent: INAddMediaIntent) async -> [INAddMediaMediaItemResolutionResult]
  optional func resolveMediaDestination(for intent: INAddMediaIntent, with completion: @escaping (INAddMediaMediaDestinationResolutionResult) -> Void)
  optional func resolveMediaDestination(for intent: INAddMediaIntent) async -> INAddMediaMediaDestinationResolutionResult
}
