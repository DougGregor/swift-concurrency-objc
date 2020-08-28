
extension NSValue {
  @available(iOS 4.0, *)
  /*not inherited*/ init(time: CMTime)
  @available(iOS 4.0, *)
  var timeValue: CMTime { get }
  @available(iOS 4.0, *)
  /*not inherited*/ init(timeRange: CMTimeRange)
  @available(iOS 4.0, *)
  var timeRangeValue: CMTimeRange { get }
  @available(iOS 4.0, *)
  /*not inherited*/ init(timeMapping: CMTimeMapping)
  @available(iOS 4.0, *)
  var timeMappingValue: CMTimeMapping { get }
}
extension NSCoder {
  @available(iOS 4.0, *)
  func encode(_ time: CMTime, forKey key: String)
  @available(iOS 4.0, *)
  func decodeTime(forKey key: String) -> CMTime
  @available(iOS 4.0, *)
  func encode(_ timeRange: CMTimeRange, forKey key: String)
  @available(iOS 4.0, *)
  func decodeTimeRange(forKey key: String) -> CMTimeRange
  @available(iOS 4.0, *)
  func encode(_ timeMapping: CMTimeMapping, forKey key: String)
  @available(iOS 4.0, *)
  func decodeTimeMapping(forKey key: String) -> CMTimeMapping
}
