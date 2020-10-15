
@available(watchOS 6.0, *)
class INAirportGate : NSObject, NSCopying, NSSecureCoding {
  init(airport: INAirport, terminal: String?, gate: String?)
  @NSCopying var airport: INAirport { get }
  var terminal: String? { get }
  var gate: String? { get }
}
