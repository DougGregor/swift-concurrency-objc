
@available(tvOS 10.0, *)
class INCarAudioSourceResolutionResult : INIntentResolutionResult {
  class func success(with resolvedCarAudioSource: INCarAudioSource) -> Self
  class func confirmationRequired(with carAudioSourceToConfirm: INCarAudioSource) -> Self
}
