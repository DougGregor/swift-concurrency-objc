
@available(iOS 13.0, *)
class HKHeartbeatSeriesBuilder : HKSeriesBuilder {
  class var maximumCount: Int { get }
  init(healthStore: HKHealthStore, device: HKDevice?, start startDate: Date)
  func addHeartbeatWithTimeInterval(sinceSeriesStartDate timeInterval: TimeInterval, precededByGap: Bool, completion: @escaping (Bool, Error?) -> Void)
  func addMetadata(_ metadata: [String : Any], completion: @escaping (Bool, Error?) -> Void)
  func finishSeries(completion: @escaping (HKHeartbeatSeriesSample?, Error?) -> Void)
}
