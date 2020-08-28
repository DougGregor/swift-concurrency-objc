
enum INGetRestaurantGuestIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case failure
}
@available(tvOS 10.0, *)
class INGetRestaurantGuestIntentResponse : INIntentResponse {
  init(code: INGetRestaurantGuestIntentResponseCode, userActivity: NSUserActivity?)
  @NSCopying var guest: INRestaurantGuest?
  @NSCopying var guestDisplayPreferences: INRestaurantGuestDisplayPreferences?
  var code: INGetRestaurantGuestIntentResponseCode { get }
}
