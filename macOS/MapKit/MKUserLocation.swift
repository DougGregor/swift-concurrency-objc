
@available(macOS 10.9, *)
class MKUserLocation : NSObject, MKAnnotation {
  var isUpdating: Bool { get }
  var location: CLLocation? { get }
  @available(macOS 10.9, *)
  var heading: CLHeading? { get }
}
