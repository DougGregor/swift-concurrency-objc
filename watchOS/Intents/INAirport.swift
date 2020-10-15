
@available(watchOS 6.0, *)
class INAirport : NSObject, NSCopying, NSSecureCoding {
  init(name: String?, iataCode: String?, icaoCode: String?)
  var name: String? { get }
  var iataCode: String? { get }
  var icaoCode: String? { get }
}
