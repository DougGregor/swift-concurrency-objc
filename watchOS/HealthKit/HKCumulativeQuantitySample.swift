
@available(watchOS 6.0, *)
class HKCumulativeQuantitySample : HKQuantitySample {
  @NSCopying var sumQuantity: HKQuantity { get }
}
@available(watchOS 5.0, *)
let HKPredicateKeyPathSum: String
