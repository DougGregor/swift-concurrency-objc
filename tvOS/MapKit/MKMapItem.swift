
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
}
extension MKMapItem : NSSecureCoding {
}
@available(tvOS 11.0, *)
let MKMapItemTypeIdentifier: String
