
@available(macOS 10.10, *)
class AVMovieTrack : AVAssetTrack {
  @available(macOS 10.11, *)
  var mediaPresentationTimeRange: CMTimeRange { get }
  @available(macOS 10.11, *)
  var mediaDecodeTimeRange: CMTimeRange { get }
  @available(macOS 10.11, *)
  var alternateGroupID: Int { get }
}
extension AVMovieTrack {
  @available(macOS 10.11, *)
  @NSCopying var mediaDataStorage: AVMediaDataStorage? { get }
}
@available(macOS 10.11, *)
class AVMutableMovieTrack : AVMovieTrack {
  var sampleReferenceBaseURL: URL?
  var isModified: Bool
  var hasProtectedContent: Bool { get }
  var timescale: CMTimeScale
}
extension AVMutableMovieTrack {
}
extension AVMutableMovieTrack {
  var layer: Int
  var cleanApertureDimensions: CGSize
  var productionApertureDimensions: CGSize
  var encodedPixelsDimensions: CGSize
}
extension AVMutableMovieTrack {
}
extension AVMutableMovieTrack {
  var preferredMediaChunkSize: Int
  var preferredMediaChunkDuration: CMTime
  var preferredMediaChunkAlignment: Int
}
extension AVMutableMovieTrack {
  func insertTimeRange(_ timeRange: CMTimeRange, of track: AVAssetTrack, at startTime: CMTime, copySampleData: Bool) throws
  func insertEmptyTimeRange(_ timeRange: CMTimeRange)
  func removeTimeRange(_ timeRange: CMTimeRange)
  func scaleTimeRange(_ timeRange: CMTimeRange, toDuration duration: CMTime)
}
extension AVMutableMovieTrack {
}
extension AVMutableMovieTrack {
  func addTrackAssociation(to movieTrack: AVMovieTrack, type trackAssociationType: AVAssetTrack.AssociationType)
  func removeTrackAssociation(to movieTrack: AVMovieTrack, type trackAssociationType: AVAssetTrack.AssociationType)
}
extension AVMutableMovieTrack {
  @available(macOS 10.13, *)
  func replaceFormatDescription(_ formatDescription: CMFormatDescription, with newFormatDescription: CMFormatDescription)
}
extension AVMutableMovieTrack {
  @available(macOS 10.12, *)
  func append(_ sampleBuffer: CMSampleBuffer, decodeTime outDecodeTime: UnsafeMutablePointer<CMTime>?, presentationTime outPresentationTime: UnsafeMutablePointer<CMTime>?) throws
  @available(macOS 10.12, *)
  func insertMediaTimeRange(_ mediaTimeRange: CMTimeRange, into trackTimeRange: CMTimeRange) -> Bool
}
extension NSNotification.Name {
  @available(macOS 10.10, *)
  static let AVFragmentedMovieTrackTimeRangeDidChange: NSNotification.Name
  @available(macOS 10.10, *)
  static let AVFragmentedMovieTrackSegmentsDidChange: NSNotification.Name
  @available(macOS, introduced: 10.10, deprecated: 10.11, message: "Upon receipt of either AVFragmentedMovieTrackTimeRangeDidChangeNotification or AVFragmentedMovieTrackSegmentsDidChangeNotification, you can assume that the sender's totalSampleDataLength has changed.")
  static let AVFragmentedMovieTrackTotalSampleDataLengthDidChange: NSNotification.Name
}
@available(macOS 10.10, *)
class AVFragmentedMovieTrack : AVMovieTrack {
}
