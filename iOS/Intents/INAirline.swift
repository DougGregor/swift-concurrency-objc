
@available(iOS 13.0, *)
class INAirline : NSObject, NSCopying, NSSecureCoding {
  init(name: String?, iataCode: String?, icaoCode: String?)
  var name: String? { get }
  var iataCode: String? { get }
  var icaoCode: String? { get }
}
