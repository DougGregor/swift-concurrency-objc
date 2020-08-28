
@available(iOS 8.0, *)
class HKStatisticsQuery : HKQuery {
  init(quantityType: HKQuantityType, quantitySamplePredicate: NSPredicate?, options: HKStatisticsOptions = [], completionHandler handler: @escaping (HKStatisticsQuery, HKStatistics?, Error?) -> Void)
}
