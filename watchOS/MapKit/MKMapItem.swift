
@available(watchOS 2.0, *)
class MKMapItem : NSObject {
  var placemark: MKPlacemark { get }
  var isCurrentLocation: Bool { get }
  var name: String?
  var phoneNumber: String?
  var url: URL?
  @available(watchOS 2.0, *)
  var timeZone: TimeZone?
  class func forCurrentLocation() -> MKMapItem
  init(placemark: MKPlacemark)
  func openInMaps(launchOptions: [String : Any]? = nil) -> Bool
  class func openMaps(with mapItems: [MKMapItem], launchOptions: [String : Any]? = nil) -> Bool
}
@available(watchOS 2.0, *)
let MKLaunchOptionsDirectionsModeKey: String
@available(watchOS 3.0, *)
let MKLaunchOptionsDirectionsModeDefault: String
@available(watchOS 2.0, *)
let MKLaunchOptionsDirectionsModeDriving: String
@available(watchOS 2.0, *)
let MKLaunchOptionsDirectionsModeWalking: String
@available(watchOS 2.0, *)
let MKLaunchOptionsDirectionsModeTransit: String
@available(watchOS 2.0, *)
let MKLaunchOptionsMapCenterKey: String
@available(watchOS 2.0, *)
let MKLaunchOptionsMapSpanKey: String
@available(watchOS 2.0, *)
let MKLaunchOptionsCameraKey: String
extension MKMapItem : NSSecureCoding {
}
@available(watchOS 4.0, *)
let MKMapItemTypeIdentifier: String
