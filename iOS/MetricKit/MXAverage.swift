
@available(iOS 13.0, *)
class MXAverage<UnitType> : NSObject, NSSecureCoding where UnitType : Unit {
  var averageMeasurement: Measurement<UnitType> { get }
  var sampleCount: Int { get }
  var standardDeviation: Double { get }
}
