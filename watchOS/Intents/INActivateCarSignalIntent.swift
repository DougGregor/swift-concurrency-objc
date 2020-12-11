
@available(watchOS 3.2, *)
class INActivateCarSignalIntent : INIntent {
  init(carName: INSpeakableString?, signals: INCarSignalOptions = [])
  @NSCopying var carName: INSpeakableString? { get }
  var signals: INCarSignalOptions { get }
}
@available(watchOS 3.2, *)
protocol INActivateCarSignalIntentHandling : NSObjectProtocol {
  func handle(intent: INActivateCarSignalIntent, completion: @escaping (INActivateCarSignalIntentResponse) -> Void)
  func handle(intent: INActivateCarSignalIntent) async -> INActivateCarSignalIntentResponse
  optional func confirm(intent: INActivateCarSignalIntent, completion: @escaping (INActivateCarSignalIntentResponse) -> Void)
  optional func confirm(intent: INActivateCarSignalIntent) async -> INActivateCarSignalIntentResponse
  optional func resolveCarName(for intent: INActivateCarSignalIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveCarName(for intent: INActivateCarSignalIntent) async -> INSpeakableStringResolutionResult
  optional func resolveSignals(for intent: INActivateCarSignalIntent, with completion: @escaping (INCarSignalOptionsResolutionResult) -> Void)
  optional func resolveSignals(for intent: INActivateCarSignalIntent) async -> INCarSignalOptionsResolutionResult
}
