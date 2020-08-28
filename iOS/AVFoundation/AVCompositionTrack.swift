
@available(iOS 4.0, *)
class AVCompositionTrack : AVAssetTrack {
  @available(iOS 13.0, *)
  var formatDescriptionReplacements: [AVCompositionTrackFormatDescriptionReplacement] { get }
}
@available(iOS 4.0, *)
class AVMutableCompositionTrack : AVCompositionTrack {
  func insertTimeRange(_ timeRange: CMTimeRange, of track: AVAssetTrack, at startTime: CMTime) throws
  @available(iOS 5.0, *)
  func insertTimeRanges(_ timeRanges: [NSValue], of tracks: [AVAssetTrack], at startTime: CMTime) throws
  func insertEmptyTimeRange(_ timeRange: CMTimeRange)
  func removeTimeRange(_ timeRange: CMTimeRange)
  func scaleTimeRange(_ timeRange: CMTimeRange, toDuration duration: CMTime)
  func validateSegments(_ trackSegments: [AVCompositionTrackSegment]) throws
  @available(iOS 12.0, *)
  func addTrackAssociation(to compositionTrack: AVCompositionTrack, type trackAssociationType: AVAssetTrack.AssociationType)
  @available(iOS 12.0, *)
  func removeTrackAssociation(to compositionTrack: AVCompositionTrack, type trackAssociationType: AVAssetTrack.AssociationType)
}
@available(iOS 13.0, *)
class AVCompositionTrackFormatDescriptionReplacement : NSObject, NSSecureCoding {
  var originalFormatDescription: CMFormatDescription { get }
  var replacementFormatDescription: CMFormatDescription { get }
}
extension AVMutableCompositionTrack {
  @available(iOS 13.0, *)
  func replaceFormatDescription(_ originalFormatDescription: CMFormatDescription, with replacementFormatDescription: CMFormatDescription?)
}
