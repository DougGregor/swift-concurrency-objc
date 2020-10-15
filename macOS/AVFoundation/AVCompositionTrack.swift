
@available(macOS 10.7, *)
class AVCompositionTrack : AVAssetTrack {
  @available(macOS 10.15, *)
  var formatDescriptionReplacements: [AVCompositionTrackFormatDescriptionReplacement] { get }
}
@available(macOS 10.7, *)
class AVMutableCompositionTrack : AVCompositionTrack {
  func insertTimeRange(_ timeRange: CMTimeRange, of track: AVAssetTrack, at startTime: CMTime) throws
  @available(macOS 10.8, *)
  func insertTimeRanges(_ timeRanges: [NSValue], of tracks: [AVAssetTrack], at startTime: CMTime) throws
  func insertEmptyTimeRange(_ timeRange: CMTimeRange)
  func removeTimeRange(_ timeRange: CMTimeRange)
  func scaleTimeRange(_ timeRange: CMTimeRange, toDuration duration: CMTime)
  func validateSegments(_ trackSegments: [AVCompositionTrackSegment]) throws
  @available(macOS 10.14, *)
  func addTrackAssociation(to compositionTrack: AVCompositionTrack, type trackAssociationType: AVAssetTrack.AssociationType)
  @available(macOS 10.14, *)
  func removeTrackAssociation(to compositionTrack: AVCompositionTrack, type trackAssociationType: AVAssetTrack.AssociationType)
}
@available(macOS 10.15, *)
class AVCompositionTrackFormatDescriptionReplacement : NSObject, NSSecureCoding {
  var originalFormatDescription: CMFormatDescription { get }
  var replacementFormatDescription: CMFormatDescription { get }
}
extension AVMutableCompositionTrack {
  @available(macOS 10.15, *)
  func replaceFormatDescription(_ originalFormatDescription: CMFormatDescription, with replacementFormatDescription: CMFormatDescription?)
}
