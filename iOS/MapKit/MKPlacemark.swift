
@available(iOS 3.0, *)
class MKPlacemark : CLPlacemark, MKAnnotation {
  @available(iOS 10.0, *)
  init(coordinate: CLLocationCoordinate2D)
  init(coordinate: CLLocationCoordinate2D, addressDictionary: [String : Any]?)
  var countryCode: String? { get }
}
