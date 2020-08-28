
@available(watchOS 4.0, *)
class INSpatialEventTrigger : NSObject, NSCopying, NSSecureCoding {
  init(placemark: CLPlacemark, event: INSpatialEvent)
  @NSCopying var placemark: CLPlacemark { get }
  var event: INSpatialEvent { get }
}
