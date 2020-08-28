
@available(tvOS 13.0, *)
class MXSignpostIntervalData : NSObject, NSSecureCoding {
  var histogrammedSignpostDuration: MXHistogram<UnitDuration> { get }
  var cumulativeCPUTime: Measurement<UnitDuration>? { get }
  var averageMemory: MXAverage<UnitInformationStorage>? { get }
  var cumulativeLogicalWrites: Measurement<UnitInformationStorage>? { get }
}
@available(tvOS 13.0, *)
class MXSignpostMetric : MXMetric {
  var signpostName: String { get }
  var signpostCategory: String { get }
  var signpostIntervalData: MXSignpostIntervalData? { get }
  var totalCount: Int { get }
}
