
@available(iOS 10.0, *)
protocol INIntentHandlerProviding : NSObjectProtocol {
  func handler(for intent: INIntent) -> Any?
}
