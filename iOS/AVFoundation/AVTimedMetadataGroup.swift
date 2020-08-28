
@available(iOS 9.0, *)
class AVMetadataGroup : NSObject {
  var items: [AVMetadataItem] { get }
}
extension AVMetadataGroup {
  @available(iOS 9.3, *)
  var classifyingLabel: String? { get }
  @available(iOS 9.3, *)
  var uniqueID: String? { get }
}
@available(iOS 4.3, *)
class AVTimedMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items: [AVMetadataItem], timeRange: CMTimeRange)
  @available(iOS 8.0, *)
  init?(sampleBuffer: CMSampleBuffer)
  var timeRange: CMTimeRange { get }
}
extension AVTimedMetadataGroup {
  @available(iOS 8.0, *)
  func copyFormatDescription() -> CMMetadataFormatDescription?
}
@available(iOS 4.3, *)
class AVMutableTimedMetadataGroup : AVTimedMetadataGroup {
}
@available(iOS 9.0, *)
class AVDateRangeMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items: [AVMetadataItem], start startDate: Date, end endDate: Date?)
  var startDate: Date { get }
  var endDate: Date? { get }
}
@available(iOS 9.0, *)
class AVMutableDateRangeMetadataGroup : AVDateRangeMetadataGroup {
}
