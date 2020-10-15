
@available(watchOS 6.0, *)
class HKHeartbeatSeriesBuilder : HKSeriesBuilder {
  class var maximumCount: Int { get }
  init(healthStore: HKHealthStore, device: HKDevice?, start startDate: Date)
  func addHeartbeatWithTimeInterval(sinceSeriesStartDate timeInterval: TimeInterval, precededByGap: Bool, completion: @escaping (Bool, Error?) -> Void)
  func addHeartbeatWithTimeInterval(sinceSeriesStartDate timeInterval: TimeInterval, precededByGap: Bool) async throws -> Bool
  func addMetadata(_ metadata: [String : Any], completion: @escaping (Bool, Error?) -> Void)
  func addMetadata(_ metadata: [String : Any]) async throws -> Bool
  func finishSeries(completion: @escaping (HKHeartbeatSeriesSample?, Error?) -> Void)
  func finishSeries() async throws -> HKHeartbeatSeriesSample?
}
