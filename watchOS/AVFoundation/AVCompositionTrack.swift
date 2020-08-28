
@available(watchOS 1.0, *)
class AVCompositionTrack : AVAssetTrack {
  @available(watchOS 6.0, *)
  var formatDescriptionReplacements: [AVCompositionTrackFormatDescriptionReplacement] { get }
}
@available(watchOS 1.0, *)
class AVMutableCompositionTrack : AVCompositionTrack {
  func insertTimeRange(_ timeRange: CMTimeRange, of track: AVAssetTrack, at startTime: CMTime) throws
  @available(watchOS 1.0, *)
  func insertTimeRanges(_ timeRanges: [NSValue], of tracks: [AVAssetTrack], at startTime: CMTime) throws
  func insertEmptyTimeRange(_ timeRange: CMTimeRange)
  func removeTimeRange(_ timeRange: CMTimeRange)
  func scaleTimeRange(_ timeRange: CMTimeRange, toDuration duration: CMTime)
  func validateSegments(_ trackSegments: [AVCompositionTrackSegment]) throws
  @available(watchOS 5.0, *)
  func addTrackAssociation(to compositionTrack: AVCompositionTrack, type trackAssociationType: AVAssetTrack.AssociationType)
  @available(watchOS 5.0, *)
  func removeTrackAssociation(to compositionTrack: AVCompositionTrack, type trackAssociationType: AVAssetTrack.AssociationType)
}
@available(watchOS 6.0, *)
class AVCompositionTrackFormatDescriptionReplacement : NSObject, NSSecureCoding {
  var originalFormatDescription: CMFormatDescription { get }
  var replacementFormatDescription: CMFormatDescription { get }
}
extension AVMutableCompositionTrack {
  @available(watchOS 6.0, *)
  func replaceFormatDescription(_ originalFormatDescription: CMFormatDescription, with replacementFormatDescription: CMFormatDescription?)
}
