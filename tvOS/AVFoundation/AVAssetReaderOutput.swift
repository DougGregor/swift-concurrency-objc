
@available(tvOS 9.0, *)
class AVAssetReaderOutput : NSObject {
  var mediaType: AVMediaType { get }
  @available(tvOS 9.0, *)
  var alwaysCopiesSampleData: Bool
  func copyNextSampleBuffer() -> CMSampleBuffer?
}
extension AVAssetReaderOutput {
  @available(tvOS 9.0, *)
  var supportsRandomAccess: Bool
  @available(tvOS 9.0, *)
  func reset(forReadingTimeRanges timeRanges: [NSValue])
  @available(tvOS 9.0, *)
  func markConfigurationAsFinal()
}
@available(tvOS 9.0, *)
class AVAssetReaderTrackOutput : AVAssetReaderOutput {
  init(track: AVAssetTrack, outputSettings: [String : Any]?)
  var track: AVAssetTrack { get }
  var outputSettings: [String : Any]? { get }
  @available(tvOS 9.0, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
}
@available(tvOS 9.0, *)
class AVAssetReaderAudioMixOutput : AVAssetReaderOutput {
  init(audioTracks: [AVAssetTrack], audioSettings: [String : Any]?)
  var audioTracks: [AVAssetTrack] { get }
  var audioSettings: [String : Any]? { get }
  @NSCopying var audioMix: AVAudioMix?
  @available(tvOS 9.0, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
}
@available(tvOS 9.0, *)
class AVAssetReaderVideoCompositionOutput : AVAssetReaderOutput {
  init(videoTracks: [AVAssetTrack], videoSettings: [String : Any]?)
  var videoTracks: [AVAssetTrack] { get }
  var videoSettings: [String : Any]? { get }
  @NSCopying var videoComposition: AVVideoComposition?
  @available(tvOS 9.0, *)
  var customVideoCompositor: AVVideoCompositing? { get }
}
@available(tvOS 9.0, *)
class AVAssetReaderOutputMetadataAdaptor : NSObject {
  init(assetReaderTrackOutput trackOutput: AVAssetReaderTrackOutput)
  var assetReaderTrackOutput: AVAssetReaderTrackOutput { get }
  func nextTimedMetadataGroup() -> AVTimedMetadataGroup?
}
@available(tvOS 9.0, *)
class AVAssetReaderSampleReferenceOutput : AVAssetReaderOutput {
  init(track: AVAssetTrack)
  var track: AVAssetTrack { get }
}
