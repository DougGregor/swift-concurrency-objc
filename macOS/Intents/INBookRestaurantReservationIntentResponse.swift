
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
