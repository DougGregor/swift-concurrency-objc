
@available(watchOS 3.0, *)
class INGetRestaurantGuestIntent : INIntent {
}
@available(watchOS 3.0, *)
protocol INGetRestaurantGuestIntentHandling : NSObjectProtocol {
  func handle(getRestaurantGuest intent: INGetRestaurantGuestIntent, completion: @escaping (INGetRestaurantGuestIntentResponse) -> Void)
  optional func confirm(getRestaurantGuest guestIntent: INGetRestaurantGuestIntent, completion: @escaping (INGetRestaurantGuestIntentResponse) -> Void)
}
