
@available(macOS 10.7, *)
class AVAssetReaderOutput : NSObject {
  var mediaType: AVMediaType { get }
  @available(macOS 10.8, *)
  var alwaysCopiesSampleData: Bool
  func copyNextSampleBuffer() -> CMSampleBuffer?
}
extension AVAssetReaderOutput {
  @available(macOS 10.10, *)
  var supportsRandomAccess: Bool
  @available(macOS 10.10, *)
  func reset(forReadingTimeRanges timeRanges: [NSValue])
  @available(macOS 10.10, *)
  func markConfigurationAsFinal()
}
@available(macOS 10.7, *)
class AVAssetReaderTrackOutput : AVAssetReaderOutput {
  init(track: AVAssetTrack, outputSettings: [String : Any]?)
  var track: AVAssetTrack { get }
  var outputSettings: [String : Any]? { get }
  @available(macOS 10.9, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
}
@available(macOS 10.7, *)
class AVAssetReaderAudioMixOutput : AVAssetReaderOutput {
  init(audioTracks: [AVAssetTrack], audioSettings: [String : Any]?)
  var audioTracks: [AVAssetTrack] { get }
  var audioSettings: [String : Any]? { get }
  @NSCopying var audioMix: AVAudioMix?
  @available(macOS 10.9, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
}
@available(macOS 10.7, *)
class AVAssetReaderVideoCompositionOutput : AVAssetReaderOutput {
  init(videoTracks: [AVAssetTrack], videoSettings: [String : Any]?)
  var videoTracks: [AVAssetTrack] { get }
  var videoSettings: [String : Any]? { get }
  @NSCopying var videoComposition: AVVideoComposition?
  @available(macOS 10.9, *)
  var customVideoCompositor: AVVideoCompositing? { get }
}
@available(macOS 10.10, *)
class AVAssetReaderOutputMetadataAdaptor : NSObject {
  init(assetReaderTrackOutput trackOutput: AVAssetReaderTrackOutput)
  var assetReaderTrackOutput: AVAssetReaderTrackOutput { get }
  func nextTimedMetadataGroup() -> AVTimedMetadataGroup?
}
@available(macOS 10.10, *)
class AVAssetReaderSampleReferenceOutput : AVAssetReaderOutput {
  init(track: AVAssetTrack)
  var track: AVAssetTrack { get }
}
