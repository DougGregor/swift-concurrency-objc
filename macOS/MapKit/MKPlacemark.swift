
@available(macOS 10.9, *)
class MKPlacemark : CLPlacemark, MKAnnotation {
  @available(macOS 10.12, *)
  init(coordinate: CLLocationCoordinate2D)
  init(coordinate: CLLocationCoordinate2D, addressDictionary: [String : Any]?)
  var countryCode: String? { get }
}
