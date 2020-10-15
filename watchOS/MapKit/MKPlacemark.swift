
@available(watchOS 2.0, *)
class MKPlacemark : CLPlacemark, MKAnnotation {
  @available(watchOS 3.0, *)
  init(coordinate: CLLocationCoordinate2D)
  init(coordinate: CLLocationCoordinate2D, addressDictionary: [String : Any]?)
  var countryCode: String? { get }
}
