
@available(tvOS 10.0, *)
class INGetAvailableRestaurantReservationBookingDefaultsIntent : INIntent {
  @available(tvOS 11.0, *)
  init(restaurant: INRestaurant?)
  @NSCopying var restaurant: INRestaurant?
}
@available(tvOS 10.0, *)
protocol INGetAvailableRestaurantReservationBookingDefaultsIntentHandling : NSObjectProtocol {
  func handle(getAvailableRestaurantReservationBookingDefaults intent: INGetAvailableRestaurantReservationBookingDefaultsIntent, completion: @escaping (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse) -> Void)
  func handle(getAvailableRestaurantReservationBookingDefaults intent: INGetAvailableRestaurantReservationBookingDefaultsIntent) async -> INGetAvailableRestaurantReservationBookingDefaultsIntentResponse
  optional func confirm(getAvailableRestaurantReservationBookingDefaults intent: INGetAvailableRestaurantReservationBookingDefaultsIntent, completion: @escaping (INGetAvailableRestaurantReservationBookingDefaultsIntentResponse) -> Void)
  optional func confirm(getAvailableRestaurantReservationBookingDefaults intent: INGetAvailableRestaurantReservationBookingDefaultsIntent) async -> INGetAvailableRestaurantReservationBookingDefaultsIntentResponse
  optional func resolveRestaurant(for intent: INGetAvailableRestaurantReservationBookingDefaultsIntent, completion: @escaping (INRestaurantResolutionResult) -> Void)
  optional func resolveRestaurant(for intent: INGetAvailableRestaurantReservationBookingDefaultsIntent) async -> INRestaurantResolutionResult
}
