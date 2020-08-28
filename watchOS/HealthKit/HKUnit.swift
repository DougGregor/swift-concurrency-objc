
@available(watchOS 2.0, *)
class HKUnit : NSObject, NSSecureCoding, NSCopying {
  var unitString: String { get }
  convenience init(from string: String)
  convenience init(from massFormatterUnit: MassFormatter.Unit)
  class func massFormatterUnit(from unit: HKUnit) -> MassFormatter.Unit
  convenience init(from lengthFormatterUnit: LengthFormatter.Unit)
  class func lengthFormatterUnit(from unit: HKUnit) -> LengthFormatter.Unit
  convenience init(from energyFormatterUnit: EnergyFormatter.Unit)
  class func energyFormatterUnit(from unit: HKUnit) -> EnergyFormatter.Unit
  func isNull() -> Bool
}
@available(watchOS 2.0, *)
enum HKMetricPrefix : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  @available(watchOS 6.0, *)
  case femto
  case pico
  case nano
  case micro
  case milli
  case centi
  case deci
  case deca
  case hecto
  case kilo
  case mega
  case giga
  case tera
}
extension HKUnit {
  class func gramUnit(with prefix: HKMetricPrefix) -> Self
  class func gram() -> Self
  class func ounce() -> Self
  class func pound() -> Self
  class func stone() -> Self
  class func moleUnit(with prefix: HKMetricPrefix, molarMass gramsPerMole: Double) -> Self
  class func moleUnit(withMolarMass gramsPerMole: Double) -> Self
}
extension HKUnit {
  class func meterUnit(with prefix: HKMetricPrefix) -> Self
  class func meter() -> Self
  class func inch() -> Self
  class func foot() -> Self
  @available(watchOS 2.0, *)
  class func yard() -> Self
  class func mile() -> Self
}
extension HKUnit {
  class func literUnit(with prefix: HKMetricPrefix) -> Self
  class func liter() -> Self
  class func fluidOunceUS() -> Self
  class func fluidOunceImperial() -> Self
  class func pintUS() -> Self
  class func pintImperial() -> Self
  @available(watchOS 2.0, *)
  class func cupUS() -> Self
  @available(watchOS 2.0, *)
  class func cupImperial() -> Self
}
extension HKUnit {
  class func pascalUnit(with prefix: HKMetricPrefix) -> Self
  class func pascal() -> Self
  class func millimeterOfMercury() -> Self
  class func centimeterOfWater() -> Self
  class func atmosphere() -> Self
  @available(watchOS 6.0, *)
  class func decibelAWeightedSoundPressureLevel() -> Self
  @available(watchOS 7.0, *)
  class func inchesOfMercury() -> Self
}
extension HKUnit {
  class func secondUnit(with prefix: HKMetricPrefix) -> Self
  class func second() -> Self
  class func minute() -> Self
  class func hour() -> Self
  class func day() -> Self
}
extension HKUnit {
  class func jouleUnit(with prefix: HKMetricPrefix) -> Self
  class func joule() -> Self
  class func kilocalorie() -> Self
  @available(watchOS 4.0, *)
  class func smallCalorie() -> Self
  @available(watchOS 4.0, *)
  class func largeCalorie() -> Self
  @available(watchOS, introduced: 2.0, deprecated: 4.0, message: "Use smallCalorieUnit or largeCalorieUnit, depending on which you mean")
  class func calorie() -> Self
}
extension HKUnit {
  class func degreeCelsius() -> Self
  class func degreeFahrenheit() -> Self
  class func kelvin() -> Self
}
extension HKUnit {
  class func siemenUnit(with prefix: HKMetricPrefix) -> Self
  class func siemen() -> Self
}
extension HKUnit {
  @available(watchOS 4.0, *)
  class func internationalUnit() -> Self
}
extension HKUnit {
  class func count() -> Self
  class func percent() -> Self
}
extension HKUnit {
  @available(watchOS 6.0, *)
  class func decibelHearingLevel() -> Self
}
extension HKUnit {
  func unitMultiplied(by unit: HKUnit) -> HKUnit
  func unitDivided(by unit: HKUnit) -> HKUnit
  func unitRaised(toPower power: Int) -> HKUnit
  func reciprocal() -> HKUnit
}
extension HKUnit {
  @available(watchOS 6.0, *)
  class func hertzUnit(with prefix: HKMetricPrefix) -> Self
  @available(watchOS 6.0, *)
  class func hertz() -> Self
}
extension HKUnit {
  @available(watchOS 7.0, *)
  class func voltUnit(with prefix: HKMetricPrefix) -> Self
  @available(watchOS 7.0, *)
  class func volt() -> Self
}
var HKUnitMolarMassBloodGlucose: Double { get }
