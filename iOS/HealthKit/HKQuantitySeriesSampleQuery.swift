
@available(iOS 12.0, *)
class HKQuantitySeriesSampleQuery : HKQuery {
  @available(iOS 13.0, *)
  var includeSample: Bool
  @available(iOS 13.0, *)
  var orderByQuantitySampleStartDate: Bool
  @available(iOS 13.0, *)
  init(quantityType: HKQuantityType, predicate: NSPredicate?, quantityHandler: @escaping (HKQuantitySeriesSampleQuery, HKQuantity?, DateInterval?, HKQuantitySample?, Bool, Error?) -> Void)
  @available(iOS, introduced: 12.0, deprecated: 13.0)
  init(sample quantitySample: HKQuantitySample, quantityHandler: @escaping (HKQuantitySeriesSampleQuery, HKQuantity?, Date?, Bool, Error?) -> Void)
}
