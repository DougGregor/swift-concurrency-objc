
@available(watchOS 5.0, *)
class HKQuantitySeriesSampleQuery : HKQuery {
  @available(watchOS 6.0, *)
  var includeSample: Bool
  @available(watchOS 6.0, *)
  var orderByQuantitySampleStartDate: Bool
  @available(watchOS 6.0, *)
  init(quantityType: HKQuantityType, predicate: NSPredicate?, quantityHandler: @escaping (HKQuantitySeriesSampleQuery, HKQuantity?, DateInterval?, HKQuantitySample?, Bool, Error?) -> Void)
  @available(watchOS, introduced: 5.0, deprecated: 6.0)
  init(sample quantitySample: HKQuantitySample, quantityHandler: @escaping (HKQuantitySeriesSampleQuery, HKQuantity?, Date?, Bool, Error?) -> Void)
}
