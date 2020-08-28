
extension NSValue {
  @available(macOS 10.7, *)
  /*not inherited*/ init(time: CMTime)
  @available(macOS 10.7, *)
  var timeValue: CMTime { get }
  @available(macOS 10.7, *)
  /*not inherited*/ init(timeRange: CMTimeRange)
  @available(macOS 10.7, *)
  var timeRangeValue: CMTimeRange { get }
  @available(macOS 10.7, *)
  /*not inherited*/ init(timeMapping: CMTimeMapping)
  @available(macOS 10.7, *)
  var timeMappingValue: CMTimeMapping { get }
}
extension NSCoder {
  @available(macOS 10.7, *)
  func encode(_ time: CMTime, forKey key: String)
  @available(macOS 10.7, *)
  func decodeTime(forKey key: String) -> CMTime
  @available(macOS 10.7, *)
  func encode(_ timeRange: CMTimeRange, forKey key: String)
  @available(macOS 10.7, *)
  func decodeTimeRange(forKey key: String) -> CMTimeRange
  @available(macOS 10.7, *)
  func encode(_ timeMapping: CMTimeMapping, forKey key: String)
  @available(macOS 10.7, *)
  func decodeTimeMapping(forKey key: String) -> CMTimeMapping
}
