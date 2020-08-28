
@available(macOS 11.0, *)
class INAirline : NSObject, NSCopying, NSSecureCoding {
  init(name: String?, iataCode: String?, icaoCode: String?)
  var name: String? { get }
  var iataCode: String? { get }
  var icaoCode: String? { get }
}
