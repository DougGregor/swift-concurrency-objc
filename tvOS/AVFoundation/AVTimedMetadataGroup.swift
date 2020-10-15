
@available(tvOS 9.0, *)
class AVMetadataGroup : NSObject {
  var items: [AVMetadataItem] { get }
}
extension AVMetadataGroup {
  @available(tvOS 9.3, *)
  var classifyingLabel: String? { get }
  @available(tvOS 9.3, *)
  var uniqueID: String? { get }
}
@available(tvOS 9.0, *)
class AVTimedMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items: [AVMetadataItem], timeRange: CMTimeRange)
  @available(tvOS 9.0, *)
  init?(sampleBuffer: CMSampleBuffer)
  var timeRange: CMTimeRange { get }
}
extension AVTimedMetadataGroup {
  @available(tvOS 9.0, *)
  func copyFormatDescription() -> CMMetadataFormatDescription?
}
@available(tvOS 9.0, *)
class AVMutableTimedMetadataGroup : AVTimedMetadataGroup {
}
@available(tvOS 9.0, *)
class AVDateRangeMetadataGroup : AVMetadataGroup, NSCopying, NSMutableCopying {
  init(items: [AVMetadataItem], start startDate: Date, end endDate: Date?)
  var startDate: Date { get }
  var endDate: Date? { get }
}
@available(tvOS 9.0, *)
class AVMutableDateRangeMetadataGroup : AVDateRangeMetadataGroup {
}
