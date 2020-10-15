
@available(tvOS 14.0, *)
class INMediaItemResolutionResult : INIntentResolutionResult {
  class func success(with resolvedMediaItem: INMediaItem) -> Self
  class func successes(with resolvedMediaItems: [INMediaItem]) -> [INMediaItemResolutionResult]
  class func disambiguation(with mediaItemsToDisambiguate: [INMediaItem]) -> Self
  class func confirmationRequired(with mediaItemToConfirm: INMediaItem?) -> Self
}
