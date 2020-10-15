
@available(tvOS 9.2, *)
class MKPlacemark : CLPlacemark, MKAnnotation {
  @available(tvOS 10.0, *)
  init(coordinate: CLLocationCoordinate2D)
  init(coordinate: CLLocationCoordinate2D, addressDictionary: [String : Any]?)
  var countryCode: String? { get }
}
