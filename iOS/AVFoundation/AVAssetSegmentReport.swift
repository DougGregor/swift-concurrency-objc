
@available(iOS 14.0, *)
enum AVAssetSegmentType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case initialization
  case separable
}
@available(iOS 14.0, *)
class AVAssetSegmentReport : NSObject {
  var segmentType: AVAssetSegmentType { get }
  var trackReports: [AVAssetSegmentTrackReport] { get }
}
@available(iOS 14.0, *)
class AVAssetSegmentTrackReport : NSObject {
  var trackID: CMPersistentTrackID { get }
  var mediaType: AVMediaType { get }
  var earliestPresentationTimeStamp: CMTime { get }
  var duration: CMTime { get }
  var firstVideoSampleInformation: AVAssetSegmentReportSampleInformation? { get }
}
@available(iOS 14.0, *)
class AVAssetSegmentReportSampleInformation : NSObject {
  var presentationTimeStamp: CMTime { get }
  var offset: Int { get }
  var length: Int { get }
  var isSyncSample: Bool { get }
}
