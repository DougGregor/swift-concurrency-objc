
@available(iOS 13.0, *)
class INUpdateMediaAffinityIntent : INIntent {
  init(mediaItems: [INMediaItem]?, mediaSearch: INMediaSearch?, affinityType: INMediaAffinityType)
  var mediaItems: [INMediaItem]? { get }
  @NSCopying var mediaSearch: INMediaSearch? { get }
  var affinityType: INMediaAffinityType { get }
}
@available(iOS 13.0, *)
protocol INUpdateMediaAffinityIntentHandling : NSObjectProtocol {
  func handle(intent: INUpdateMediaAffinityIntent, completion: @escaping (INUpdateMediaAffinityIntentResponse) -> Void)
  func handle(intent: INUpdateMediaAffinityIntent) async -> INUpdateMediaAffinityIntentResponse
  optional func confirm(intent: INUpdateMediaAffinityIntent, completion: @escaping (INUpdateMediaAffinityIntentResponse) -> Void)
  optional func confirm(intent: INUpdateMediaAffinityIntent) async -> INUpdateMediaAffinityIntentResponse
  optional func resolveMediaItems(for intent: INUpdateMediaAffinityIntent, with completion: @escaping ([INUpdateMediaAffinityMediaItemResolutionResult]) -> Void)
  optional func resolveAffinityType(for intent: INUpdateMediaAffinityIntent, with completion: @escaping (INMediaAffinityTypeResolutionResult) -> Void)
}
