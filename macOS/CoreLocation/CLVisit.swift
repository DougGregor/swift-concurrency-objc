
@available(macOS 10.15, *)
class CLVisit : NSObject, NSSecureCoding, NSCopying {
  var arrivalDate: Date { get }
  var departureDate: Date { get }
  var coordinate: CLLocationCoordinate2D { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
}
