
@available(iOS 11.0, *)
class INGetVisualCodeIntent : INIntent {
  init(visualCodeType: INVisualCodeType)
  var visualCodeType: INVisualCodeType { get }
}
@available(iOS 11.0, *)
protocol INGetVisualCodeIntentHandling : NSObjectProtocol {
  func handle(intent: INGetVisualCodeIntent, completion: @escaping (INGetVisualCodeIntentResponse) -> Void)
  func handle(intent: INGetVisualCodeIntent) async -> INGetVisualCodeIntentResponse
  optional func confirm(intent: INGetVisualCodeIntent, completion: @escaping (INGetVisualCodeIntentResponse) -> Void)
  optional func confirm(intent: INGetVisualCodeIntent) async -> INGetVisualCodeIntentResponse
  optional func resolveVisualCodeType(for intent: INGetVisualCodeIntent, with completion: @escaping (INVisualCodeTypeResolutionResult) -> Void)
  optional func resolveVisualCodeType(for intent: INGetVisualCodeIntent) async -> INVisualCodeTypeResolutionResult
}
