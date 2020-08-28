
@available(watchOS 7.0, *)
class INListCarsIntent : INIntent {
}
@available(watchOS 7.0, *)
protocol INListCarsIntentHandling : NSObjectProtocol {
  func handle(intent: INListCarsIntent, completion: @escaping (INListCarsIntentResponse) -> Void)
  optional func confirm(intent: INListCarsIntent, completion: @escaping (INListCarsIntentResponse) -> Void)
}
