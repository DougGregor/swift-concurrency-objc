
@available(tvOS 10.0, *)
class INSetRadioStationIntent : INIntent {
  init(__radioType radioType: INRadioType, frequency: NSNumber?, stationName: String?, channel: String?, presetNumber: NSNumber?)
  var radioType: INRadioType { get }
  @NSCopying var __frequency: NSNumber? { get }
  var stationName: String? { get }
  var channel: String? { get }
  @NSCopying var __presetNumber: NSNumber? { get }
}
@available(tvOS 10.0, *)
protocol INSetRadioStationIntentHandling : NSObjectProtocol {
  func handle(intent: INSetRadioStationIntent, completion: @escaping (INSetRadioStationIntentResponse) -> Void)
  func handle(intent: INSetRadioStationIntent) async -> INSetRadioStationIntentResponse
  optional func confirm(intent: INSetRadioStationIntent, completion: @escaping (INSetRadioStationIntentResponse) -> Void)
  optional func confirm(intent: INSetRadioStationIntent) async -> INSetRadioStationIntentResponse
  optional func resolveRadioType(for intent: INSetRadioStationIntent, with completion: @escaping (INRadioTypeResolutionResult) -> Void)
  optional func resolveRadioType(for intent: INSetRadioStationIntent) async -> INRadioTypeResolutionResult
  optional func resolveFrequency(for intent: INSetRadioStationIntent, with completion: @escaping (INDoubleResolutionResult) -> Void)
  optional func resolveFrequency(for intent: INSetRadioStationIntent) async -> INDoubleResolutionResult
  optional func resolveStationName(for intent: INSetRadioStationIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  optional func resolveStationName(for intent: INSetRadioStationIntent) async -> INStringResolutionResult
  optional func resolveChannel(for intent: INSetRadioStationIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  optional func resolveChannel(for intent: INSetRadioStationIntent) async -> INStringResolutionResult
  optional func resolvePresetNumber(for intent: INSetRadioStationIntent, with completion: @escaping (INIntegerResolutionResult) -> Void)
  optional func resolvePresetNumber(for intent: INSetRadioStationIntent) async -> INIntegerResolutionResult
}
