
@available(tvOS 10.0, *)
class INRideVehicle : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var location: CLLocation?
  var registrationPlate: String?
  var manufacturer: String?
  var model: String?
  @NSCopying var mapAnnotationImage: INImage?
}
