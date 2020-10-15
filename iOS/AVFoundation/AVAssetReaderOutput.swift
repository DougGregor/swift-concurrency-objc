
@available(iOS 4.1, *)
class AVAssetReaderOutput : NSObject {
  var mediaType: AVMediaType { get }
  @available(iOS 5.0, *)
  var alwaysCopiesSampleData: Bool
  func copyNextSampleBuffer() -> CMSampleBuffer?
}
extension AVAssetReaderOutput {
  @available(iOS 8.0, *)
  var supportsRandomAccess: Bool
  @available(iOS 8.0, *)
  func reset(forReadingTimeRanges timeRanges: [NSValue])
  @available(iOS 8.0, *)
  func markConfigurationAsFinal()
}
@available(iOS 4.1, *)
class AVAssetReaderTrackOutput : AVAssetReaderOutput {
  init(track: AVAssetTrack, outputSettings: [String : Any]?)
  var track: AVAssetTrack { get }
  var outputSettings: [String : Any]? { get }
  @available(iOS 7.0, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
}
@available(iOS 4.1, *)
class AVAssetReaderAudioMixOutput : AVAssetReaderOutput {
  init(audioTracks: [AVAssetTrack], audioSettings: [String : Any]?)
  var audioTracks: [AVAssetTrack] { get }
  var audioSettings: [String : Any]? { get }
  @NSCopying var audioMix: AVAudioMix?
  @available(iOS 7.0, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
}
@available(iOS 4.1, *)
class AVAssetReaderVideoCompositionOutput : AVAssetReaderOutput {
  init(videoTracks: [AVAssetTrack], videoSettings: [String : Any]?)
  var videoTracks: [AVAssetTrack] { get }
  var videoSettings: [String : Any]? { get }
  @NSCopying var videoComposition: AVVideoComposition?
  @available(iOS 7.0, *)
  var customVideoCompositor: AVVideoCompositing? { get }
}
@available(iOS 8.0, *)
class AVAssetReaderOutputMetadataAdaptor : NSObject {
  init(assetReaderTrackOutput trackOutput: AVAssetReaderTrackOutput)
  var assetReaderTrackOutput: AVAssetReaderTrackOutput { get }
  func nextTimedMetadataGroup() -> AVTimedMetadataGroup?
}
@available(iOS 8.0, *)
class AVAssetReaderSampleReferenceOutput : AVAssetReaderOutput {
  init(track: AVAssetTrack)
  var track: AVAssetTrack { get }
}
