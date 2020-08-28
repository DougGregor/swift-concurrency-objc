
@available(watchOS 2.0, *)
class MKUserLocation : NSObject, MKAnnotation {
  var isUpdating: Bool { get }
  var location: CLLocation? { get }
  @available(watchOS 2.0, *)
  var heading: CLHeading? { get }
}
