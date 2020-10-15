
@available(iOS 10.3, *)
class INActivateCarSignalIntent : INIntent {
  init(carName: INSpeakableString?, signals: INCarSignalOptions = [])
  @NSCopying var carName: INSpeakableString? { get }
  var signals: INCarSignalOptions { get }
}
@available(iOS 10.3, *)
protocol INActivateCarSignalIntentHandling : NSObjectProtocol {
  func handle(intent: INActivateCarSignalIntent, completion: @escaping (INActivateCarSignalIntentResponse) -> Void)
  optional func confirm(intent: INActivateCarSignalIntent, completion: @escaping (INActivateCarSignalIntentResponse) -> Void)
  optional func resolveCarName(for intent: INActivateCarSignalIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveSignals(for intent: INActivateCarSignalIntent, with completion: @escaping (INCarSignalOptionsResolutionResult) -> Void)
}
