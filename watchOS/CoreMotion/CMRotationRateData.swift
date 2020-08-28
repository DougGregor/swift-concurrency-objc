
@available(watchOS 7.0, *)
class CMRotationRateData : CMLogItem {
  var rotationRate: CMRotationRate { get }
}
@available(watchOS 7.0, *)
class CMRecordedRotationRateData : CMRotationRateData {
  var startDate: Date { get }
}
