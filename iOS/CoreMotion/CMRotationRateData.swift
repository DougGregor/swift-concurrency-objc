
@available(iOS 14.0, *)
class CMRotationRateData : CMLogItem {
  var rotationRate: CMRotationRate { get }
}
@available(iOS 14.0, *)
class CMRecordedRotationRateData : CMRotationRateData {
  var startDate: Date { get }
}
