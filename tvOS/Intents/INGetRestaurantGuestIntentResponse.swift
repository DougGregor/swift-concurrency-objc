
enum INGetRestaurantGuestIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case failure
}
