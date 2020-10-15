
@available(watchOS, introduced: 5.0, deprecated: 6.0, renamed: "HKCumulativeQuantitySample")
class HKCumulativeQuantitySeriesSample : HKCumulativeQuantitySample {
  @NSCopying var sum: HKQuantity { get }
}
