
@available(iOS 13.0, *)
class HKDiscreteQuantitySample : HKQuantitySample {
  @NSCopying var minimumQuantity: HKQuantity { get }
  @NSCopying var averageQuantity: HKQuantity { get }
  @NSCopying var maximumQuantity: HKQuantity { get }
  @NSCopying var mostRecentQuantity: HKQuantity { get }
  var mostRecentQuantityDateInterval: DateInterval { get }
}
@available(iOS 13.0, *)
let HKPredicateKeyPathMin: String
@available(iOS 13.0, *)
let HKPredicateKeyPathAverage: String
@available(iOS 13.0, *)
let HKPredicateKeyPathMax: String
@available(iOS 13.0, *)
let HKPredicateKeyPathMostRecent: String
@available(iOS 13.0, *)
let HKPredicateKeyPathMostRecentStartDate: String
@available(iOS 13.0, *)
let HKPredicateKeyPathMostRecentEndDate: String
@available(iOS 13.0, *)
let HKPredicateKeyPathMostRecentDuration: String
