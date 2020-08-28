
@available(iOS 13.0, *)
class INSearchForMediaIntent : INIntent {
  init(mediaItems: [INMediaItem]?, mediaSearch: INMediaSearch?)
  var mediaItems: [INMediaItem]? { get }
  @NSCopying var mediaSearch: INMediaSearch? { get }
}
@available(iOS 13.0, *)
protocol INSearchForMediaIntentHandling : NSObjectProtocol {
  func handle(intent: INSearchForMediaIntent, completion: @escaping (INSearchForMediaIntentResponse) -> Void)
  func handle(intent: INSearchForMediaIntent) async -> INSearchForMediaIntentResponse
  optional func confirm(intent: INSearchForMediaIntent, completion: @escaping (INSearchForMediaIntentResponse) -> Void)
  optional func confirm(intent: INSearchForMediaIntent) async -> INSearchForMediaIntentResponse
  optional func resolveMediaItems(for intent: INSearchForMediaIntent, with completion: @escaping ([INSearchForMediaMediaItemResolutionResult]) -> Void)
  optional func resolveMediaItems(for intent: INSearchForMediaIntent) async -> [INSearchForMediaMediaItemResolutionResult]
}
