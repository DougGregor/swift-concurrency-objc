
@available(iOS 6.0, *)
class MKMapItem : NSObject {
  var placemark: MKPlacemark { get }
  var isCurrentLocation: Bool { get }
  var name: String?
  var phoneNumber: String?
  var url: URL?
  @available(iOS 9.0, *)
  var timeZone: TimeZone?
  @available(iOS 13.0, *)
  var pointOfInterestCategory: MKPointOfInterestCategory?
  class func forCurrentLocation() -> MKMapItem
  init(placemark: MKPlacemark)
  func openInMaps(launchOptions: [String : Any]? = nil) -> Bool
  class func openMaps(with mapItems: [MKMapItem], launchOptions: [String : Any]? = nil) -> Bool
  @available(iOS 13.2, *)
  func openInMaps(launchOptions: [String : Any]? = nil, from scene: UIScene?, completionHandler completion: ((Bool) -> Void)? = nil)
  @available(iOS 13.2, *)
  class func openMaps(with mapItems: [MKMapItem], launchOptions: [String : Any]? = nil, from scene: UIScene?, completionHandler completion: ((Bool) -> Void)? = nil)
}
@available(iOS 6.0, *)
let MKLaunchOptionsDirectionsModeKey: String
@available(iOS 6.0, *)
let MKLaunchOptionsMapTypeKey: String
@available(iOS 6.0, *)
let MKLaunchOptionsShowsTrafficKey: String
@available(iOS 10.0, *)
let MKLaunchOptionsDirectionsModeDefault: String
@available(iOS 6.0, *)
let MKLaunchOptionsDirectionsModeDriving: String
@available(iOS 6.0, *)
let MKLaunchOptionsDirectionsModeWalking: String
@available(iOS 9.0, *)
let MKLaunchOptionsDirectionsModeTransit: String
@available(iOS 6.0, *)
let MKLaunchOptionsMapCenterKey: String
@available(iOS 6.0, *)
let MKLaunchOptionsMapSpanKey: String
@available(iOS 7.1, *)
let MKLaunchOptionsCameraKey: String
extension MKMapItem : NSSecureCoding {
}
@available(iOS 11.0, *)
let MKMapItemTypeIdentifier: String
extension MKMapItem : NSItemProviderReading, NSItemProviderWriting {
}
