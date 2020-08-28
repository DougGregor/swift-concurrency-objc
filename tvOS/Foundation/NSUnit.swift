
@available(tvOS 10.0, *)
class UnitConverter : NSObject {
  func baseUnitValue(fromValue value: Double) -> Double
  func value(fromBaseUnitValue baseUnitValue: Double) -> Double
}
@available(tvOS 10.0, *)
class UnitConverterLinear : UnitConverter, NSSecureCoding {
  var coefficient: Double { get }
  var constant: Double { get }
  convenience init(coefficient: Double)
  init(coefficient: Double, constant: Double)
}
@available(tvOS 10.0, *)
class Unit : NSObject, NSCopying, NSSecureCoding {
  var symbol: String { get }
  init(symbol: String)
}
@available(tvOS 10.0, *)
class Dimension : Unit, NSSecureCoding {
  @NSCopying var converter: UnitConverter { get }
  init(symbol: String, converter: UnitConverter)
  class func baseUnit() -> Self
}
@available(tvOS 10.0, *)
class UnitAcceleration : Dimension, NSSecureCoding {
  @NSCopying class var metersPerSecondSquared: UnitAcceleration { get }
  @NSCopying class var gravity: UnitAcceleration { get }
}
@available(tvOS 10.0, *)
class UnitAngle : Dimension, NSSecureCoding {
  @NSCopying class var degrees: UnitAngle { get }
  @NSCopying class var arcMinutes: UnitAngle { get }
  @NSCopying class var arcSeconds: UnitAngle { get }
  @NSCopying class var radians: UnitAngle { get }
  @NSCopying class var gradians: UnitAngle { get }
  @NSCopying class var revolutions: UnitAngle { get }
}
@available(tvOS 10.0, *)
class UnitArea : Dimension, NSSecureCoding {
  @NSCopying class var squareMegameters: UnitArea { get }
  @NSCopying class var squareKilometers: UnitArea { get }
  @NSCopying class var squareMeters: UnitArea { get }
  @NSCopying class var squareCentimeters: UnitArea { get }
  @NSCopying class var squareMillimeters: UnitArea { get }
  @NSCopying class var squareMicrometers: UnitArea { get }
  @NSCopying class var squareNanometers: UnitArea { get }
  @NSCopying class var squareInches: UnitArea { get }
  @NSCopying class var squareFeet: UnitArea { get }
  @NSCopying class var squareYards: UnitArea { get }
  @NSCopying class var squareMiles: UnitArea { get }
  @NSCopying class var acres: UnitArea { get }
  @NSCopying class var ares: UnitArea { get }
  @NSCopying class var hectares: UnitArea { get }
}
@available(tvOS 10.0, *)
class UnitConcentrationMass : Dimension, NSSecureCoding {
  @NSCopying class var gramsPerLiter: UnitConcentrationMass { get }
  @NSCopying class var milligramsPerDeciliter: UnitConcentrationMass { get }
  class func millimolesPerLiter(withGramsPerMole gramsPerMole: Double) -> UnitConcentrationMass
}
@available(tvOS 10.0, *)
class UnitDispersion : Dimension, NSSecureCoding {
  @NSCopying class var partsPerMillion: UnitDispersion { get }
}
@available(tvOS 10.0, *)
class UnitDuration : Dimension, NSSecureCoding {
  @NSCopying class var hours: UnitDuration { get }
  @NSCopying class var minutes: UnitDuration { get }
  @NSCopying class var seconds: UnitDuration { get }
  @available(tvOS 13.0, *)
  @NSCopying class var milliseconds: UnitDuration { get }
  @available(tvOS 13.0, *)
  @NSCopying class var microseconds: UnitDuration { get }
  @available(tvOS 13.0, *)
  @NSCopying class var nanoseconds: UnitDuration { get }
  @available(tvOS 13.0, *)
  @NSCopying class var picoseconds: UnitDuration { get }
}
@available(tvOS 10.0, *)
class UnitElectricCharge : Dimension, NSSecureCoding {
  @NSCopying class var coulombs: UnitElectricCharge { get }
  @NSCopying class var megaampereHours: UnitElectricCharge { get }
  @NSCopying class var kiloampereHours: UnitElectricCharge { get }
  @NSCopying class var ampereHours: UnitElectricCharge { get }
  @NSCopying class var milliampereHours: UnitElectricCharge { get }
  @NSCopying class var microampereHours: UnitElectricCharge { get }
}
@available(tvOS 10.0, *)
class UnitElectricCurrent : Dimension, NSSecureCoding {
  @NSCopying class var megaamperes: UnitElectricCurrent { get }
  @NSCopying class var kiloamperes: UnitElectricCurrent { get }
  @NSCopying class var amperes: UnitElectricCurrent { get }
  @NSCopying class var milliamperes: UnitElectricCurrent { get }
  @NSCopying class var microamperes: UnitElectricCurrent { get }
}
@available(tvOS 10.0, *)
class UnitElectricPotentialDifference : Dimension, NSSecureCoding {
  @NSCopying class var megavolts: UnitElectricPotentialDifference { get }
  @NSCopying class var kilovolts: UnitElectricPotentialDifference { get }
  @NSCopying class var volts: UnitElectricPotentialDifference { get }
  @NSCopying class var millivolts: UnitElectricPotentialDifference { get }
  @NSCopying class var microvolts: UnitElectricPotentialDifference { get }
}
@available(tvOS 10.0, *)
class UnitElectricResistance : Dimension, NSSecureCoding {
  @NSCopying class var megaohms: UnitElectricResistance { get }
  @NSCopying class var kiloohms: UnitElectricResistance { get }
  @NSCopying class var ohms: UnitElectricResistance { get }
  @NSCopying class var milliohms: UnitElectricResistance { get }
  @NSCopying class var microohms: UnitElectricResistance { get }
}
@available(tvOS 10.0, *)
class UnitEnergy : Dimension, NSSecureCoding {
  @NSCopying class var kilojoules: UnitEnergy { get }
  @NSCopying class var joules: UnitEnergy { get }
  @NSCopying class var kilocalories: UnitEnergy { get }
  @NSCopying class var calories: UnitEnergy { get }
  @NSCopying class var kilowattHours: UnitEnergy { get }
}
@available(tvOS 10.0, *)
class UnitFrequency : Dimension, NSSecureCoding {
  @NSCopying class var terahertz: UnitFrequency { get }
  @NSCopying class var gigahertz: UnitFrequency { get }
  @NSCopying class var megahertz: UnitFrequency { get }
  @NSCopying class var kilohertz: UnitFrequency { get }
  @NSCopying class var hertz: UnitFrequency { get }
  @NSCopying class var millihertz: UnitFrequency { get }
  @NSCopying class var microhertz: UnitFrequency { get }
  @NSCopying class var nanohertz: UnitFrequency { get }
  @available(tvOS 13.0, *)
  @NSCopying class var framesPerSecond: UnitFrequency { get }
}
@available(tvOS 10.0, *)
class UnitFuelEfficiency : Dimension, NSSecureCoding {
  @NSCopying class var litersPer100Kilometers: UnitFuelEfficiency { get }
  @NSCopying class var milesPerImperialGallon: UnitFuelEfficiency { get }
  @NSCopying class var milesPerGallon: UnitFuelEfficiency { get }
}
@available(tvOS 13.0, *)
class UnitInformationStorage : Dimension, NSSecureCoding {
  @NSCopying class var bytes: UnitInformationStorage { get }
  @NSCopying class var bits: UnitInformationStorage { get }
  @NSCopying class var nibbles: UnitInformationStorage { get }
  @NSCopying class var yottabytes: UnitInformationStorage { get }
  @NSCopying class var zettabytes: UnitInformationStorage { get }
  @NSCopying class var exabytes: UnitInformationStorage { get }
  @NSCopying class var petabytes: UnitInformationStorage { get }
  @NSCopying class var terabytes: UnitInformationStorage { get }
  @NSCopying class var gigabytes: UnitInformationStorage { get }
  @NSCopying class var megabytes: UnitInformationStorage { get }
  @NSCopying class var kilobytes: UnitInformationStorage { get }
  @NSCopying class var yottabits: UnitInformationStorage { get }
  @NSCopying class var zettabits: UnitInformationStorage { get }
  @NSCopying class var exabits: UnitInformationStorage { get }
  @NSCopying class var petabits: UnitInformationStorage { get }
  @NSCopying class var terabits: UnitInformationStorage { get }
  @NSCopying class var gigabits: UnitInformationStorage { get }
  @NSCopying class var megabits: UnitInformationStorage { get }
  @NSCopying class var kilobits: UnitInformationStorage { get }
  @NSCopying class var yobibytes: UnitInformationStorage { get }
  @NSCopying class var zebibytes: UnitInformationStorage { get }
  @NSCopying class var exbibytes: UnitInformationStorage { get }
  @NSCopying class var pebibytes: UnitInformationStorage { get }
  @NSCopying class var tebibytes: UnitInformationStorage { get }
  @NSCopying class var gibibytes: UnitInformationStorage { get }
  @NSCopying class var mebibytes: UnitInformationStorage { get }
  @NSCopying class var kibibytes: UnitInformationStorage { get }
  @NSCopying class var yobibits: UnitInformationStorage { get }
  @NSCopying class var zebibits: UnitInformationStorage { get }
  @NSCopying class var exbibits: UnitInformationStorage { get }
  @NSCopying class var pebibits: UnitInformationStorage { get }
  @NSCopying class var tebibits: UnitInformationStorage { get }
  @NSCopying class var gibibits: UnitInformationStorage { get }
  @NSCopying class var mebibits: UnitInformationStorage { get }
  @NSCopying class var kibibits: UnitInformationStorage { get }
}
@available(tvOS 10.0, *)
class UnitLength : Dimension, NSSecureCoding {
  @NSCopying class var megameters: UnitLength { get }
  @NSCopying class var kilometers: UnitLength { get }
  @NSCopying class var hectometers: UnitLength { get }
  @NSCopying class var decameters: UnitLength { get }
  @NSCopying class var meters: UnitLength { get }
  @NSCopying class var decimeters: UnitLength { get }
  @NSCopying class var centimeters: UnitLength { get }
  @NSCopying class var millimeters: UnitLength { get }
  @NSCopying class var micrometers: UnitLength { get }
  @NSCopying class var nanometers: UnitLength { get }
  @NSCopying class var picometers: UnitLength { get }
  @NSCopying class var inches: UnitLength { get }
  @NSCopying class var feet: UnitLength { get }
  @NSCopying class var yards: UnitLength { get }
  @NSCopying class var miles: UnitLength { get }
  @NSCopying class var scandinavianMiles: UnitLength { get }
  @NSCopying class var lightyears: UnitLength { get }
  @NSCopying class var nauticalMiles: UnitLength { get }
  @NSCopying class var fathoms: UnitLength { get }
  @NSCopying class var furlongs: UnitLength { get }
  @NSCopying class var astronomicalUnits: UnitLength { get }
  @NSCopying class var parsecs: UnitLength { get }
}
@available(tvOS 10.0, *)
class UnitIlluminance : Dimension, NSSecureCoding {
  @NSCopying class var lux: UnitIlluminance { get }
}
@available(tvOS 10.0, *)
class UnitMass : Dimension, NSSecureCoding {
  @NSCopying class var kilograms: UnitMass { get }
  @NSCopying class var grams: UnitMass { get }
  @NSCopying class var decigrams: UnitMass { get }
  @NSCopying class var centigrams: UnitMass { get }
  @NSCopying class var milligrams: UnitMass { get }
  @NSCopying class var micrograms: UnitMass { get }
  @NSCopying class var nanograms: UnitMass { get }
  @NSCopying class var picograms: UnitMass { get }
  @NSCopying class var ounces: UnitMass { get }
  @NSCopying class var pounds: UnitMass { get }
  @NSCopying class var stones: UnitMass { get }
  @NSCopying class var metricTons: UnitMass { get }
  @NSCopying class var shortTons: UnitMass { get }
  @NSCopying class var carats: UnitMass { get }
  @NSCopying class var ouncesTroy: UnitMass { get }
  @NSCopying class var slugs: UnitMass { get }
}
@available(tvOS 10.0, *)
class UnitPower : Dimension, NSSecureCoding {
  @NSCopying class var terawatts: UnitPower { get }
  @NSCopying class var gigawatts: UnitPower { get }
  @NSCopying class var megawatts: UnitPower { get }
  @NSCopying class var kilowatts: UnitPower { get }
  @NSCopying class var watts: UnitPower { get }
  @NSCopying class var milliwatts: UnitPower { get }
  @NSCopying class var microwatts: UnitPower { get }
  @NSCopying class var nanowatts: UnitPower { get }
  @NSCopying class var picowatts: UnitPower { get }
  @NSCopying class var femtowatts: UnitPower { get }
  @NSCopying class var horsepower: UnitPower { get }
}
@available(tvOS 10.0, *)
class UnitPressure : Dimension, NSSecureCoding {
  @NSCopying class var newtonsPerMetersSquared: UnitPressure { get }
  @NSCopying class var gigapascals: UnitPressure { get }
  @NSCopying class var megapascals: UnitPressure { get }
  @NSCopying class var kilopascals: UnitPressure { get }
  @NSCopying class var hectopascals: UnitPressure { get }
  @NSCopying class var inchesOfMercury: UnitPressure { get }
  @NSCopying class var bars: UnitPressure { get }
  @NSCopying class var millibars: UnitPressure { get }
  @NSCopying class var millimetersOfMercury: UnitPressure { get }
  @NSCopying class var poundsForcePerSquareInch: UnitPressure { get }
}
@available(tvOS 10.0, *)
class UnitSpeed : Dimension, NSSecureCoding {
  @NSCopying class var metersPerSecond: UnitSpeed { get }
  @NSCopying class var kilometersPerHour: UnitSpeed { get }
  @NSCopying class var milesPerHour: UnitSpeed { get }
  @NSCopying class var knots: UnitSpeed { get }
}
@available(tvOS 10.0, *)
class UnitTemperature : Dimension, NSSecureCoding {
  @NSCopying class var kelvin: UnitTemperature { get }
  @NSCopying class var celsius: UnitTemperature { get }
  @NSCopying class var fahrenheit: UnitTemperature { get }
}
@available(tvOS 10.0, *)
class UnitVolume : Dimension, NSSecureCoding {
  @NSCopying class var megaliters: UnitVolume { get }
  @NSCopying class var kiloliters: UnitVolume { get }
  @NSCopying class var liters: UnitVolume { get }
  @NSCopying class var deciliters: UnitVolume { get }
  @NSCopying class var centiliters: UnitVolume { get }
  @NSCopying class var milliliters: UnitVolume { get }
  @NSCopying class var cubicKilometers: UnitVolume { get }
  @NSCopying class var cubicMeters: UnitVolume { get }
  @NSCopying class var cubicDecimeters: UnitVolume { get }
  @NSCopying class var cubicCentimeters: UnitVolume { get }
  @NSCopying class var cubicMillimeters: UnitVolume { get }
  @NSCopying class var cubicInches: UnitVolume { get }
  @NSCopying class var cubicFeet: UnitVolume { get }
  @NSCopying class var cubicYards: UnitVolume { get }
  @NSCopying class var cubicMiles: UnitVolume { get }
  @NSCopying class var acreFeet: UnitVolume { get }
  @NSCopying class var bushels: UnitVolume { get }
  @NSCopying class var teaspoons: UnitVolume { get }
  @NSCopying class var tablespoons: UnitVolume { get }
  @NSCopying class var fluidOunces: UnitVolume { get }
  @NSCopying class var cups: UnitVolume { get }
  @NSCopying class var pints: UnitVolume { get }
  @NSCopying class var quarts: UnitVolume { get }
  @NSCopying class var gallons: UnitVolume { get }
  @NSCopying class var imperialTeaspoons: UnitVolume { get }
  @NSCopying class var imperialTablespoons: UnitVolume { get }
  @NSCopying class var imperialFluidOunces: UnitVolume { get }
  @NSCopying class var imperialPints: UnitVolume { get }
  @NSCopying class var imperialQuarts: UnitVolume { get }
  @NSCopying class var imperialGallons: UnitVolume { get }
  @NSCopying class var metricCups: UnitVolume { get }
}
