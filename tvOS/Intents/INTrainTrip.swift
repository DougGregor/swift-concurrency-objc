
@available(tvOS 13.0, *)
class INTrainTrip : NSObject, NSCopying, NSSecureCoding {
  init(provider: String?, trainName: String?, trainNumber: String?, tripDuration: INDateComponentsRange, departureStationLocation: CLPlacemark, departurePlatform: String?, arrivalStationLocation: CLPlacemark, arrivalPlatform: String?)
  var provider: String? { get }
  var trainName: String? { get }
  var trainNumber: String? { get }
  @NSCopying var tripDuration: INDateComponentsRange { get }
  @NSCopying var departureStationLocation: CLPlacemark { get }
  var departurePlatform: String? { get }
  @NSCopying var arrivalStationLocation: CLPlacemark { get }
  var arrivalPlatform: String? { get }
}
