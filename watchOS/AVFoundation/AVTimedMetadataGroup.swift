
@available(watchOS 2.0, *)
class AVMetadataGroup : NSObject {
  var items: [AVMetadataItem] { get }
}
extension AVMetadataGroup {
  @available(watchOS 2.3, *)
  var classifyingLabel: String? { get }
  @available(watchOS 2.3, *)
  var uniqueID: String? { get }
}
@available(watchOS 1.0, *)
class AVTimedMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items: [AVMetadataItem], timeRange: CMTimeRange)
  @available(watchOS 1.0, *)
  init?(sampleBuffer: CMSampleBuffer)
  var timeRange: CMTimeRange { get }
}
extension AVTimedMetadataGroup {
  @available(watchOS 1.0, *)
  func copyFormatDescription() -> CMMetadataFormatDescription?
}
@available(watchOS 1.0, *)
class AVMutableTimedMetadataGroup : AVTimedMetadataGroup {
}
@available(watchOS 2.0, *)
class AVDateRangeMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items: [AVMetadataItem], start startDate: Date, end endDate: Date?)
  var startDate: Date { get }
  var endDate: Date? { get }
}
@available(watchOS 2.0, *)
class AVMutableDateRangeMetadataGroup : AVDateRangeMetadataGroup {
}
