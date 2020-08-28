
@available(tvOS 13.0, *)
class MXMemoryMetric : MXMetric {
  var peakMemoryUsage: Measurement<UnitInformationStorage> { get }
  var averageSuspendedMemory: MXAverage<UnitInformationStorage> { get }
}
