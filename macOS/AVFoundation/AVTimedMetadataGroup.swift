
@available(macOS 10.11, *)
class AVMetadataGroup : NSObject {
  var items: [AVMetadataItem] { get }
}
extension AVMetadataGroup {
  @available(macOS 10.11.3, *)
  var classifyingLabel: String? { get }
  @available(macOS 10.11.3, *)
  var uniqueID: String? { get }
}
@available(macOS 10.7, *)
class AVTimedMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items: [AVMetadataItem], timeRange: CMTimeRange)
  @available(macOS 10.10, *)
  init?(sampleBuffer: CMSampleBuffer)
  var timeRange: CMTimeRange { get }
}
extension AVTimedMetadataGroup {
  @available(macOS 10.10, *)
  func copyFormatDescription() -> CMMetadataFormatDescription?
}
@available(macOS 10.7, *)
class AVMutableTimedMetadataGroup : AVTimedMetadataGroup {
}
@available(macOS 10.11, *)
class AVDateRangeMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items: [AVMetadataItem], start startDate: Date, end endDate: Date?)
  var startDate: Date { get }
  var endDate: Date? { get }
}
@available(macOS 10.11, *)
class AVMutableDateRangeMetadataGroup : AVDateRangeMetadataGroup {
}
