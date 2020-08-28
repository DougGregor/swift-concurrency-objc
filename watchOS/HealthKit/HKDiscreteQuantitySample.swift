
@available(watchOS 6.0, *)
class HKDiscreteQuantitySample : HKQuantitySample {
  @NSCopying var minimumQuantity: HKQuantity { get }
  @NSCopying var averageQuantity: HKQuantity { get }
  @NSCopying var maximumQuantity: HKQuantity { get }
  @NSCopying var mostRecentQuantity: HKQuantity { get }
  var mostRecentQuantityDateInterval: DateInterval { get }
}
@available(watchOS 6.0, *)
let HKPredicateKeyPathMin: String
@available(watchOS 6.0, *)
let HKPredicateKeyPathAverage: String
@available(watchOS 6.0, *)
let HKPredicateKeyPathMax: String
@available(watchOS 6.0, *)
let HKPredicateKeyPathMostRecent: String
@available(watchOS 6.0, *)
let HKPredicateKeyPathMostRecentStartDate: String
@available(watchOS 6.0, *)
let HKPredicateKeyPathMostRecentEndDate: String
@available(watchOS 6.0, *)
let HKPredicateKeyPathMostRecentDuration: String
