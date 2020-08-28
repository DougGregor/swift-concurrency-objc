
extension MeasurementFormatter {
  @available(watchOS 3.0, *)
  struct UnitOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var providedUnit: MeasurementFormatter.UnitOptions { get }
    static var naturalScale: MeasurementFormatter.UnitOptions { get }
    static var temperatureWithoutUnit: MeasurementFormatter.UnitOptions { get }
  }
}
@available(watchOS 3.0, *)
class MeasurementFormatter : Formatter, NSSecureCoding {
  var unitOptions: MeasurementFormatter.UnitOptions
  var unitStyle: Formatter.UnitStyle
  var locale: Locale!
  @NSCopying var numberFormatter: NumberFormatter!
  func string(from measurement: Measurement<Unit>) -> String
  func string(from unit: Unit) -> String
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
extension MeasurementFormatter {
  func string<UnitType>(from measurement: Measurement<UnitType>) -> String where UnitType : Unit
}
