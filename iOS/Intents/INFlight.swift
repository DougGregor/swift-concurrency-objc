
@available(iOS 13.0, *)
class INFlight : NSObject, NSCopying, NSSecureCoding {
  init(airline: INAirline, flightNumber: String, boardingTime: INDateComponentsRange?, flightDuration: INDateComponentsRange, departureAirportGate: INAirportGate, arrivalAirportGate: INAirportGate)
  @NSCopying var airline: INAirline { get }
  var flightNumber: String { get }
  @NSCopying var boardingTime: INDateComponentsRange? { get }
  @NSCopying var flightDuration: INDateComponentsRange { get }
  @NSCopying var departureAirportGate: INAirportGate { get }
  @NSCopying var arrivalAirportGate: INAirportGate { get }
}
