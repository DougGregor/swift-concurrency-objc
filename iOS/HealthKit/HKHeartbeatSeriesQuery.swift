
@available(iOS 13.0, *)
class HKHeartbeatSeriesQuery : HKQuery {
  init(heartbeatSeries: HKHeartbeatSeriesSample, dataHandler: @escaping (HKHeartbeatSeriesQuery, TimeInterval, Bool, Bool, Error?) -> Void)
}
