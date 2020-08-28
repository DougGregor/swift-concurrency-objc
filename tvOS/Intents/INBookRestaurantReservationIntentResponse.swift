
enum INBookRestaurantReservationIntentCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case denied
  case failure
  case failureRequiringAppLaunch
  case failureRequiringAppLaunchMustVerifyCredentials
  case failureRequiringAppLaunchServiceTemporarilyUnavailable
}
@available(tvOS 10.0, *)
class INBookRestaurantReservationIntentResponse : INIntentResponse {
  init(code: INBookRestaurantReservationIntentCode, userActivity: NSUserActivity?)
  var code: INBookRestaurantReservationIntentCode { get }
  @NSCopying var userBooking: INRestaurantReservationUserBooking?
}
