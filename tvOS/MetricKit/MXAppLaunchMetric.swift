
@available(tvOS 13.0, *)
class MXAppLaunchMetric : MXMetric {
  var histogrammedTimeToFirstDraw: MXHistogram<UnitDuration> { get }
  var histogrammedApplicationResumeTime: MXHistogram<UnitDuration> { get }
}
