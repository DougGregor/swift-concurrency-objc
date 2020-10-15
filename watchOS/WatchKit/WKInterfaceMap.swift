
@available(watchOS 2.0, *)
enum WKInterfaceMapPinColor : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case red
  case green
  case purple
}
extension WKInterfaceMap {
  @available(watchOS 6.1, *)
  enum UserTrackingMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case follow
  }
}
@available(watchOS 2.0, *)
class WKInterfaceMap : WKInterfaceObject {
  @available(watchOS 6.1, *)
  func setShowsUserLocation(_ showsUserLocation: Bool)
  @available(watchOS 6.1, *)
  func setShowsUserHeading(_ showsUserHeading: Bool)
  @available(watchOS 6.1, *)
  func setUserTrackingMode(_ mode: WKInterfaceMap.UserTrackingMode, animated: Bool)
  func setVisibleMapRect(_ mapRect: MKMapRect)
  func setRegion(_ coordinateRegion: MKCoordinateRegion)
  func addAnnotation(_ location: CLLocationCoordinate2D, with image: UIImage?, centerOffset offset: CGPoint)
  func addAnnotation(_ location: CLLocationCoordinate2D, withImageNamed name: String?, centerOffset offset: CGPoint)
  func addAnnotation(_ location: CLLocationCoordinate2D, with pinColor: WKInterfaceMapPinColor)
  func removeAllAnnotations()
}
