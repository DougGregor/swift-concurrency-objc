
@available(iOS 10.0, *)
class INGetRestaurantGuestIntent : INIntent {
}
@available(iOS 10.0, *)
protocol INGetRestaurantGuestIntentHandling : NSObjectProtocol {
  func handle(getRestaurantGuest intent: INGetRestaurantGuestIntent, completion: @escaping (INGetRestaurantGuestIntentResponse) -> Void)
  optional func confirm(getRestaurantGuest guestIntent: INGetRestaurantGuestIntent, completion: @escaping (INGetRestaurantGuestIntentResponse) -> Void)
}
