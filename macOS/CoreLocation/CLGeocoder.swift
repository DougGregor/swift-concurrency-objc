
typealias CLGeocodeCompletionHandler = ([CLPlacemark]?, Error?) -> Void
@available(macOS 10.8, *)
class CLGeocoder : NSObject {
  var isGeocoding: Bool { get }
  func reverseGeocodeLocation(_ location: CLLocation, completionHandler: @escaping CLGeocodeCompletionHandler)
  func reverseGeocodeLocation(_ location: CLLocation) async throws -> [CLPlacemark]?
  @available(macOS 10.13, *)
  func reverseGeocodeLocation(_ location: CLLocation, preferredLocale locale: Locale?, completionHandler: @escaping CLGeocodeCompletionHandler)
  @available(macOS 10.13, *)
  func reverseGeocodeLocation(_ location: CLLocation, preferredLocale locale: Locale?) async throws -> [CLPlacemark]?
  @available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use -geocodePostalAddress:completionHandler:")
  func geocodeAddressDictionary(_ addressDictionary: [AnyHashable : Any], completionHandler: @escaping CLGeocodeCompletionHandler)
  @available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use -geocodePostalAddress:completionHandler:")
  func geocodeAddressDictionary(_ addressDictionary: [AnyHashable : Any]) async throws -> [CLPlacemark]?
  func geocodeAddressString(_ addressString: String, completionHandler: @escaping CLGeocodeCompletionHandler)
  func geocodeAddressString(_ addressString: String) async throws -> [CLPlacemark]?
  func geocodeAddressString(_ addressString: String, in region: CLRegion?, completionHandler: @escaping CLGeocodeCompletionHandler)
  func geocodeAddressString(_ addressString: String, in region: CLRegion?) async throws -> [CLPlacemark]?
  @available(macOS 10.13, *)
  func geocodeAddressString(_ addressString: String, in region: CLRegion?, preferredLocale locale: Locale?, completionHandler: @escaping CLGeocodeCompletionHandler)
  @available(macOS 10.13, *)
  func geocodeAddressString(_ addressString: String, in region: CLRegion?, preferredLocale locale: Locale?) async throws -> [CLPlacemark]?
  func cancelGeocode()
}
extension CLGeocoder {
}
