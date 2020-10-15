
@available(watchOS 7.0, *)
class INBusTrip : NSObject, NSCopying, NSSecureCoding {
  init(provider: String?, busName: String?, busNumber: String?, tripDuration: INDateComponentsRange, departureBusStopLocation: CLPlacemark, departurePlatform: String?, arrivalBusStopLocation: CLPlacemark, arrivalPlatform: String?)
  var provider: String? { get }
  var busName: String? { get }
  var busNumber: String? { get }
  @NSCopying var tripDuration: INDateComponentsRange { get }
  @NSCopying var departureBusStopLocation: CLPlacemark { get }
  var departurePlatform: String? { get }
  @NSCopying var arrivalBusStopLocation: CLPlacemark { get }
  var arrivalPlatform: String? { get }
}
