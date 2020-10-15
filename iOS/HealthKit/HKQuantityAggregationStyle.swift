
@available(iOS 8.0, *)
enum HKQuantityAggregationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cumulative
  @available(iOS 13.0, *)
  case discreteArithmetic
  @available(iOS, introduced: 8.0, deprecated: 13.0, renamed: "HKQuantityAggregationStyle.discreteArithmetic")
  static var discrete: HKQuantityAggregationStyle { get }
  @available(iOS 13.0, *)
  case discreteTemporallyWeighted
  @available(iOS 13.0, *)
  case discreteEquivalentContinuousLevel
}
