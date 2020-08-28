
@available(iOS 13.0, *)
class MXLocationActivityMetric : MXMetric {
  var cumulativeBestAccuracyTime: Measurement<UnitDuration> { get }
  var cumulativeBestAccuracyForNavigationTime: Measurement<UnitDuration> { get }
  var cumulativeNearestTenMetersAccuracyTime: Measurement<UnitDuration> { get }
  var cumulativeHundredMetersAccuracyTime: Measurement<UnitDuration> { get }
  var cumulativeKilometerAccuracyTime: Measurement<UnitDuration> { get }
  var cumulativeThreeKilometersAccuracyTime: Measurement<UnitDuration> { get }
}
