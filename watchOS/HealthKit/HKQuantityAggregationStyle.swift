
@available(watchOS 2.0, *)
enum HKQuantityAggregationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cumulative
  @available(watchOS 6.0, *)
  case discreteArithmetic
  @available(watchOS, introduced: 2.0, deprecated: 6.0, renamed: "HKQuantityAggregationStyle.discreteArithmetic")
  static var discrete: HKQuantityAggregationStyle { get }
  @available(watchOS 6.0, *)
  case discreteTemporallyWeighted
  @available(watchOS 6.0, *)
  case discreteEquivalentContinuousLevel
}
