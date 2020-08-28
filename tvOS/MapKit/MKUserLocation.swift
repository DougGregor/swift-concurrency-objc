
@available(tvOS 9.2, *)
class MKUserLocation : NSObject, MKAnnotation {
  var isUpdating: Bool { get }
  var location: CLLocation? { get }
  @available(tvOS 5.0, *)
  var heading: CLHeading? { get }
}
