
@available(tvOS 13.0, *)
class MXCPUMetric : MXMetric {
  var cumulativeCPUTime: Measurement<UnitDuration> { get }
  @available(tvOS 14.0, *)
  var cumulativeCPUInstructions: Measurement<Unit> { get }
}
