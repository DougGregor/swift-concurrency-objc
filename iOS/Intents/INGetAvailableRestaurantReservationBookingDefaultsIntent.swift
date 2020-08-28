
@available(iOS 10.0, *)
class INGetAvailableRestaurantReservationBookingDefaultsIntent : INIntent {
  @available(iOS 11.0, *)
  init(restaurant: INRestaurant?)
  @NSCopying var restaurant: INRestaurant?
}
@available(iOS 10.0, *)
protocol INGetAvailableRestaurantReservationBookingDefaultsIntentHandling : NSObjectProtocol {
  func handle(getAvailableRestaurantReservationBookingDefaults intent: INGetAvailableRestaurantReservationBookingDefaultsIntent, completion: @escaping (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse) -> Void)
  optional func confirm(getAvailableRestaurantReservationBookingDefaults intent: INGetAvailableRestaurantReservationBookingDefaultsIntent, completion: @escaping (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse) -> Void)
  optional func resolveRestaurant(for intent: INGetAvailableRestaurantReservationBookingDefaultsIntent, completion: @escaping (INRestaurantResolutionResult) -> Void)
}
