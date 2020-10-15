
@available(iOS 13.0, *)
class MXCPUMetric : MXMetric {
  var cumulativeCPUTime: Measurement<UnitDuration> { get }
  @available(iOS 14.0, *)
  var cumulativeCPUInstructions: Measurement<Unit> { get }
}
