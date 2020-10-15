
@available(watchOS 3.2, *)
protocol INIntentHandlerProviding : NSObjectProtocol {
  func handler(for intent: INIntent) -> Any?
}
