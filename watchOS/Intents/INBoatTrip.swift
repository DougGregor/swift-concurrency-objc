
@available(watchOS 7.0, *)
class INBoatTrip : NSObject, NSCopying, NSSecureCoding {
  init(provider: String?, boatName: String?, boatNumber: String?, tripDuration: INDateComponentsRange, departureBoatTerminalLocation: CLPlacemark, arrivalBoatTerminalLocation: CLPlacemark)
  var provider: String? { get }
  var boatName: String? { get }
  var boatNumber: String? { get }
  @NSCopying var tripDuration: INDateComponentsRange { get }
  @NSCopying var departureBoatTerminalLocation: CLPlacemark { get }
  @NSCopying var arrivalBoatTerminalLocation: CLPlacemark { get }
}
