
@available(tvOS 13.0, *)
class MXCellularConditionMetric : MXMetric {
  var histogrammedCellularConditionTime: MXHistogram<MXUnitSignalBars> { get }
}
