
@available(macOS 10.9, *)
class MKMapItem : NSObject {
  var placemark: MKPlacemark { get }
  var isCurrentLocation: Bool { get }
  var name: String?
  var phoneNumber: String?
  var url: URL?
  @available(macOS 10.11, *)
  var timeZone: TimeZone?
  @available(macOS 10.15, *)
  var pointOfInterestCategory: MKPointOfInterestCategory?
  class func forCurrentLocation() -> MKMapItem
  init(placemark: MKPlacemark)
  func openInMaps(launchOptions: [String : Any]? = nil) -> Bool
  class func openMaps(with mapItems: [MKMapItem], launchOptions: [String : Any]? = nil) -> Bool
}
@available(macOS 10.9, *)
let MKLaunchOptionsDirectionsModeKey: String
@available(macOS 10.9, *)
let MKLaunchOptionsMapTypeKey: String
@available(macOS 10.9, *)
let MKLaunchOptionsShowsTrafficKey: String
@available(macOS 10.12, *)
let MKLaunchOptionsDirectionsModeDefault: String
@available(macOS 10.9, *)
let MKLaunchOptionsDirectionsModeDriving: String
@available(macOS 10.9, *)
let MKLaunchOptionsDirectionsModeWalking: String
@available(macOS 10.11, *)
let MKLaunchOptionsDirectionsModeTransit: String
@available(macOS 10.9, *)
let MKLaunchOptionsMapCenterKey: String
@available(macOS 10.9, *)
let MKLaunchOptionsMapSpanKey: String
@available(macOS 10.10, *)
let MKLaunchOptionsCameraKey: String
extension MKMapItem : NSSecureCoding {
}
@available(macOS 10.13, *)
let MKMapItemTypeIdentifier: String
