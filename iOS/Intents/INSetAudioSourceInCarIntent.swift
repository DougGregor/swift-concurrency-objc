
@available(iOS 10.0, *)
class INSetAudioSourceInCarIntent : INIntent {
  init(audioSource: INCarAudioSource, relativeAudioSourceReference: INRelativeReference)
  var audioSource: INCarAudioSource { get }
  var relativeAudioSourceReference: INRelativeReference { get }
}
@available(iOS 10.0, *)
protocol INSetAudioSourceInCarIntentHandling : NSObjectProtocol {
  func handle(intent: INSetAudioSourceInCarIntent, completion: @escaping (INSetAudioSourceInCarIntentResponse) -> Void)
  func handle(intent: INSetAudioSourceInCarIntent) async -> INSetAudioSourceInCarIntentResponse
  optional func confirm(intent: INSetAudioSourceInCarIntent, completion: @escaping (INSetAudioSourceInCarIntentResponse) -> Void)
  optional func confirm(intent: INSetAudioSourceInCarIntent) async -> INSetAudioSourceInCarIntentResponse
  optional func resolveAudioSource(for intent: INSetAudioSourceInCarIntent, with completion: @escaping (INCarAudioSourceResolutionResult) -> Void)
  optional func resolveAudioSource(for intent: INSetAudioSourceInCarIntent) async -> INCarAudioSourceResolutionResult
  optional func resolveRelativeAudioSourceReference(for intent: INSetAudioSourceInCarIntent, with completion: @escaping (INRelativeReferenceResolutionResult) -> Void)
  optional func resolveRelativeAudioSourceReference(for intent: INSetAudioSourceInCarIntent) async -> INRelativeReferenceResolutionResult
}
