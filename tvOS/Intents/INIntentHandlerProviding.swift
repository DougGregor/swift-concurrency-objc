
@available(tvOS 14.0, *)
protocol INIntentHandlerProviding : NSObjectProtocol {
  func handler(for intent: INIntent) -> Any?
}
