
@available(macOS 10.7, *)
class AVCompositionTrackSegment : AVAssetTrackSegment {
  init(url URL: URL, trackID: CMPersistentTrackID, sourceTimeRange: CMTimeRange, targetTimeRange: CMTimeRange)
  init(timeRange: CMTimeRange)
  var sourceURL: URL? { get }
  var sourceTrackID: CMPersistentTrackID { get }
}
