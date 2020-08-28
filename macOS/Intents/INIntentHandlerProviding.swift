
@available(macOS 11.0, *)
protocol INIntentHandlerProviding : NSObjectProtocol {
  func handler(for intent: INIntent) -> Any?
}
