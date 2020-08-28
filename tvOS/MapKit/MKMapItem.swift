
@available(tvOS 9.2, *)
class MKMapItem : NSObject {
  var placemark: MKPlacemark { get }
  var isCurrentLocation: Bool { get }
  var name: String?
  var phoneNumber: String?
  var url: URL?
  @available(tvOS 9.0, *)
  var timeZone: TimeZone?
  @available(tvOS 13.0, *)
  var pointOfInterestCategory: MKPointOfInterestCategory?
  class func forCurrentLocation() -> MKMapItem
  init(placemark: MKPlacemark)
  func openInMaps(launchOptions: [String : Any]? = nil) -> Bool
  class func openMaps(with mapItems: [MKMapItem], launchOptions: [String : Any]? = nil) -> Bool
}
@available(tvOS 6.0, *)
let MKLaunchOptionsDirectionsModeKey: String
@available(tvOS 6.0, *)
let MKLaunchOptionsMapTypeKey: String
@available(tvOS 6.0, *)
let MKLaunchOptionsShowsTrafficKey: String
@available(tvOS 10.0, *)
let MKLaunchOptionsDirectionsModeDefault: String
@available(tvOS 6.0, *)
let MKLaunchOptionsDirectionsModeDriving: String
@available(tvOS 6.0, *)
let MKLaunchOptionsDirectionsModeWalking: String
@available(tvOS 9.0, *)
let MKLaunchOptionsDirectionsModeTransit: String
@available(tvOS 6.0, *)
let MKLaunchOptionsMapCenterKey: String
@available(tvOS 6.0, *)
let MKLaunchOptionsMapSpanKey: String
@available(tvOS 7.1, *)
let MKLaunchOptionsCameraKey: String
extension MKMapItem : NSSecureCoding {
}
@available(tvOS 11.0, *)
let MKMapItemTypeIdentifier: String
