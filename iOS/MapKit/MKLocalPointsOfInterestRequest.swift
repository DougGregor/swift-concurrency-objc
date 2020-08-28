
extension MKLocalPointsOfInterestRequest {
  @available(iOS 14.0, *)
  class let maxRadius: CLLocationDistance
}
@available(iOS 14.0, *)
class MKLocalPointsOfInterestRequest : NSObject, NSCopying {
  init(center coordinate: CLLocationCoordinate2D, radius: CLLocationDistance)
  init(coordinateRegion region: MKCoordinateRegion)
  var coordinate: CLLocationCoordinate2D { get }
  var radius: CLLocationDistance { get }
  var region: MKCoordinateRegion { get }
  @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
}
