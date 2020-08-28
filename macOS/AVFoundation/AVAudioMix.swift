
@available(macOS 10.7, *)
class AVAudioMix : NSObject, NSCopying, NSMutableCopying {
  var inputParameters: [AVAudioMixInputParameters] { get }
}
@available(macOS 10.7, *)
class AVMutableAudioMix : AVAudioMix {
}
@available(macOS 10.7, *)
class AVAudioMixInputParameters : NSObject, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  @available(macOS 10.10, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm? { get }
  @available(macOS 10.9, *)
  var audioTapProcessor: MTAudioProcessingTap? { get }
  func getVolumeRamp(for time: CMTime, startVolume: UnsafeMutablePointer<Float>?, endVolume: UnsafeMutablePointer<Float>?, timeRange: UnsafeMutablePointer<CMTimeRange>?) -> Bool
}
@available(macOS 10.7, *)
class AVMutableAudioMixInputParameters : AVAudioMixInputParameters {
  convenience init(track: AVAssetTrack?)
  func setVolumeRamp(fromStartVolume startVolume: Float, toEndVolume endVolume: Float, timeRange: CMTimeRange)
  func setVolume(_ volume: Float, at time: CMTime)
}
