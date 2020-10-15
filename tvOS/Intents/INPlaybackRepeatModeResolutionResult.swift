
@available(tvOS 14.0, *)
class INPlaybackRepeatModeResolutionResult : INIntentResolutionResult {
  class func success(with resolvedPlaybackRepeatMode: INPlaybackRepeatMode) -> Self
  class func confirmationRequired(with playbackRepeatModeToConfirm: INPlaybackRepeatMode) -> Self
}
