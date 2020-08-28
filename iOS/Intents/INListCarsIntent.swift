
@available(iOS 14.0, *)
class INListCarsIntent : INIntent {
}
@available(iOS 14.0, *)
protocol INListCarsIntentHandling : NSObjectProtocol {
  func handle(intent: INListCarsIntent, completion: @escaping (INListCarsIntentResponse) -> Void)
  func handle(intent: INListCarsIntent) async -> INListCarsIntentResponse
  optional func confirm(intent: INListCarsIntent, completion: @escaping (INListCarsIntentResponse) -> Void)
  optional func confirm(intent: INListCarsIntent) async -> INListCarsIntentResponse
}
