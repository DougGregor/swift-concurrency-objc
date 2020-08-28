
@available(watchOS 2.0, *)
class CLPlacemark : NSObject, NSCopying, NSSecureCoding {
  init(placemark: CLPlacemark)
  @NSCopying var location: CLLocation? { get }
  @NSCopying var region: CLRegion? { get }
  @available(watchOS 2.0, *)
  var timeZone: TimeZone? { get }
  @available(watchOS, introduced: 1.0, deprecated: 4.0, message: "Use @properties")
  var addressDictionary: [AnyHashable : Any]? { get }
  var name: String? { get }
  var thoroughfare: String? { get }
  var subThoroughfare: String? { get }
  var locality: String? { get }
  var subLocality: String? { get }
  var administrativeArea: String? { get }
  var subAdministrativeArea: String? { get }
  var postalCode: String? { get }
  var isoCountryCode: String? { get }
  var country: String? { get }
  var inlandWater: String? { get }
  var ocean: String? { get }
  var areasOfInterest: [String]? { get }
}
extension CLPlacemark {
}
