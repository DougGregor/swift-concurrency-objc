
@available(iOS 13.0, *)
class HKCumulativeQuantitySample : HKQuantitySample {
  @NSCopying var sumQuantity: HKQuantity { get }
}
@available(iOS 12.0, *)
let HKPredicateKeyPathSum: String
