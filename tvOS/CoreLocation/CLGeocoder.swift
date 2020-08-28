
typealias CLGeocodeCompletionHandler = ([CLPlacemark]?, Error?) -> Void
@available(tvOS 5.0, *)
class CLGeocoder : NSObject {
  var isGeocoding: Bool { get }
  func reverseGeocodeLocation(_ location: CLLocation, completionHandler: @escaping CLGeocodeCompletionHandler)
  @available(tvOS 11.0, *)
  func reverseGeocodeLocation(_ location: CLLocation, preferredLocale locale: Locale?, completionHandler: @escaping CLGeocodeCompletionHandler)
  @available(tvOS, introduced: 5.0, deprecated: 11.0, message: "Use -geocodePostalAddress:completionHandler:")
  func geocodeAddressDictionary(_ addressDictionary: [AnyHashable : Any], completionHandler: @escaping CLGeocodeCompletionHandler)
  func geocodeAddressString(_ addressString: String, completionHandler: @escaping CLGeocodeCompletionHandler)
  func geocodeAddressString(_ addressString: String, in region: CLRegion?, completionHandler: @escaping CLGeocodeCompletionHandler)
  @available(tvOS 11.0, *)
  func geocodeAddressString(_ addressString: String, in region: CLRegion?, preferredLocale locale: Locale?, completionHandler: @escaping CLGeocodeCompletionHandler)
  func cancelGeocode()
}
extension CLGeocoder {
}
