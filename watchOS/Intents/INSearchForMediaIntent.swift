
@available(watchOS 6.0, *)
class INSearchForMediaIntent : INIntent {
  init(mediaItems: [INMediaItem]?, mediaSearch: INMediaSearch?)
  var mediaItems: [INMediaItem]? { get }
  @NSCopying var mediaSearch: INMediaSearch? { get }
}
@available(watchOS 6.0, *)
protocol INSearchForMediaIntentHandling : NSObjectProtocol {
  func handle(intent: INSearchForMediaIntent, completion: @escaping (INSearchForMediaIntentResponse) -> Void)
  optional func confirm(intent: INSearchForMediaIntent, completion: @escaping (INSearchForMediaIntentResponse) -> Void)
  optional func resolveMediaItems(for intent: INSearchForMediaIntent, with completion: @escaping ([INSearchForMediaMediaItemResolutionResult]) -> Void)
}
