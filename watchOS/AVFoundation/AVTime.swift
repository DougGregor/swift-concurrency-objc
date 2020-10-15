
extension NSValue {
  @available(watchOS 1.0, *)
  /*not inherited*/ init(time: CMTime)
  @available(watchOS 1.0, *)
  var timeValue: CMTime { get }
  @available(watchOS 1.0, *)
  /*not inherited*/ init(timeRange: CMTimeRange)
  @available(watchOS 1.0, *)
  var timeRangeValue: CMTimeRange { get }
  @available(watchOS 1.0, *)
  /*not inherited*/ init(timeMapping: CMTimeMapping)
  @available(watchOS 1.0, *)
  var timeMappingValue: CMTimeMapping { get }
}
extension NSCoder {
  @available(watchOS 1.0, *)
  func encode(_ time: CMTime, forKey key: String)
  @available(watchOS 1.0, *)
  func decodeTime(forKey key: String) -> CMTime
  @available(watchOS 1.0, *)
  func encode(_ timeRange: CMTimeRange, forKey key: String)
  @available(watchOS 1.0, *)
  func decodeTimeRange(forKey key: String) -> CMTimeRange
  @available(watchOS 1.0, *)
  func encode(_ timeMapping: CMTimeMapping, forKey key: String)
  @available(watchOS 1.0, *)
  func decodeTimeMapping(forKey key: String) -> CMTimeMapping
}
