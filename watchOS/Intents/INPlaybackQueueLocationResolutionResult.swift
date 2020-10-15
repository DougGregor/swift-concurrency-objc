
@available(watchOS 6.0, *)
class INPlaybackQueueLocationResolutionResult : INIntentResolutionResult {
  class func success(with resolvedPlaybackQueueLocation: INPlaybackQueueLocation) -> Self
  class func confirmationRequired(with playbackQueueLocationToConfirm: INPlaybackQueueLocation) -> Self
}
