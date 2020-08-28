
@available(iOS 10.0, *)
class INSetRadioStationIntent : INIntent {
  init(__radioType radioType: INRadioType, frequency: NSNumber?, stationName: String?, channel: String?, presetNumber: NSNumber?)
  var radioType: INRadioType { get }
  @NSCopying var __frequency: NSNumber? { get }
  var stationName: String? { get }
  var channel: String? { get }
  @NSCopying var __presetNumber: NSNumber? { get }
}

@available(macOS 10.15, iOS 10.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INSetRadioStationIntent {
  @nonobjc convenience init(radioType: INRadioType = .unknown, frequency: Double? = nil, stationName: String? = nil, channel: String? = nil, presetNumber: Int? = nil)
  @nonobjc final var frequency: Double? { get }
  @nonobjc final var presetNumber: Int? { get }
}
@available(iOS 10.0, *)
protocol INSetRadioStationIntentHandling : NSObjectProtocol {
  func handle(intent: INSetRadioStationIntent, completion: @escaping (INSetRadioStationIntentResponse) -> Void)
  func handle(intent: INSetRadioStationIntent) async -> INSetRadioStationIntentResponse
  optional func confirm(intent: INSetRadioStationIntent, completion: @escaping (INSetRadioStationIntentResponse) -> Void)
  optional func confirm(intent: INSetRadioStationIntent) async -> INSetRadioStationIntentResponse
  optional func resolveRadioType(for intent: INSetRadioStationIntent, with completion: @escaping (INRadioTypeResolutionResult) -> Void)
  optional func resolveFrequency(for intent: INSetRadioStationIntent, with completion: @escaping (INDoubleResolutionResult) -> Void)
  optional func resolveStationName(for intent: INSetRadioStationIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  optional func resolveChannel(for intent: INSetRadioStationIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  optional func resolvePresetNumber(for intent: INSetRadioStationIntent, with completion: @escaping (INIntegerResolutionResult) -> Void)
}
