
@available(watchOS 3.0, *)
class INRideStatus : NSObject, NSCopying, NSSecureCoding {
  var rideIdentifier: String?
  var phase: INRidePhase
  @NSCopying var completionStatus: INRideCompletionStatus?
  @NSCopying var vehicle: INRideVehicle?
  @NSCopying var driver: INRideDriver?
  var estimatedPickupDate: Date?
  var estimatedDropOffDate: Date?
  var estimatedPickupEndDate: Date?
  @available(watchOS 3.2, *)
  @NSCopying var scheduledPickupTime: INDateComponentsRange?
  @NSCopying var pickupLocation: CLPlacemark?
  var waypoints: [CLPlacemark]?
  @NSCopying var dropOffLocation: CLPlacemark?
  @NSCopying var rideOption: INRideOption?
  var userActivityForCancelingInApplication: NSUserActivity?
  var additionalActionActivities: [NSUserActivity]?
}
