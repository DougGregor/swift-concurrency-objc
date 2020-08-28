
@available(iOS 13.0, *)
class MXAppResponsivenessMetric : MXMetric {
  var histogrammedApplicationHangTime: MXHistogram<UnitDuration> { get }
}
