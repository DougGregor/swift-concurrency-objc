
extension NSValue {
  @available(tvOS 9.0, *)
  /*not inherited*/ init(time: CMTime)
  @available(tvOS 9.0, *)
  var timeValue: CMTime { get }
  @available(tvOS 9.0, *)
  /*not inherited*/ init(timeRange: CMTimeRange)
  @available(tvOS 9.0, *)
  var timeRangeValue: CMTimeRange { get }
  @available(tvOS 9.0, *)
  /*not inherited*/ init(timeMapping: CMTimeMapping)
  @available(tvOS 9.0, *)
  var timeMappingValue: CMTimeMapping { get }
}
extension NSCoder {
  @available(tvOS 9.0, *)
  func encode(_ time: CMTime, forKey key: String)
  @available(tvOS 9.0, *)
  func decodeTime(forKey key: String) -> CMTime
  @available(tvOS 9.0, *)
  func encode(_ timeRange: CMTimeRange, forKey key: String)
  @available(tvOS 9.0, *)
  func decodeTimeRange(forKey key: String) -> CMTimeRange
  @available(tvOS 9.0, *)
  func encode(_ timeMapping: CMTimeMapping, forKey key: String)
  @available(tvOS 9.0, *)
  func decodeTimeMapping(forKey key: String) -> CMTimeMapping
}
