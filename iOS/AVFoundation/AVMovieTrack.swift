
@available(iOS 13.0, *)
class AVMovieTrack : AVAssetTrack {
  @available(iOS 13.0, *)
  var mediaPresentationTimeRange: CMTimeRange { get }
  @available(iOS 13.0, *)
  var mediaDecodeTimeRange: CMTimeRange { get }
  @available(iOS 13.0, *)
  var alternateGroupID: Int { get }
}
extension AVMovieTrack {
  @available(iOS 13.0, *)
  @NSCopying var mediaDataStorage: AVMediaDataStorage? { get }
}
@available(iOS 13.0, *)
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
  @available(iOS 13.0, *)
  func replaceFormatDescription(_ formatDescription: CMFormatDescription, with newFormatDescription: CMFormatDescription)
}
extension AVMutableMovieTrack {
  @available(iOS 13.0, *)
  func append(_ sampleBuffer: CMSampleBuffer, decodeTime outDecodeTime: UnsafeMutablePointer<CMTime>?, presentationTime outPresentationTime: UnsafeMutablePointer<CMTime>?) throws
  @available(iOS 13.0, *)
  func insertMediaTimeRange(_ mediaTimeRange: CMTimeRange, into trackTimeRange: CMTimeRange) -> Bool
}
extension NSNotification.Name {
  @available(iOS 13.0, *)
  static let AVFragmentedMovieTrackTimeRangeDidChange: NSNotification.Name
  @available(iOS 13.0, *)
  static let AVFragmentedMovieTrackSegmentsDidChange: NSNotification.Name
}
@available(iOS 13.0, *)
class AVFragmentedMovieTrack : AVMovieTrack {
}
