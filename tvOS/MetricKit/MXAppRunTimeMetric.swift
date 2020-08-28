
@available(tvOS 13.0, *)
class MXAppRunTimeMetric : MXMetric {
  var cumulativeForegroundTime: Measurement<UnitDuration> { get }
  var cumulativeBackgroundTime: Measurement<UnitDuration> { get }
  var cumulativeBackgroundAudioTime: Measurement<UnitDuration> { get }
  var cumulativeBackgroundLocationTime: Measurement<UnitDuration> { get }
}
