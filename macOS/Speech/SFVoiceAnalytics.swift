
@available(macOS 10.15, *)
class SFAcousticFeature : NSObject, NSCopying, NSSecureCoding {
  var __acousticFeatureValuePerFrame: [NSNumber] { get }
  var frameDuration: TimeInterval { get }
}

@available(macOS 10.15, iOS 13.0, *)
extension SFAcousticFeature {
  var acousticFeatureValuePerFrame: [Double] { get }
}
@available(macOS 10.15, *)
class SFVoiceAnalytics : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var jitter: SFAcousticFeature { get }
  @NSCopying var shimmer: SFAcousticFeature { get }
  @NSCopying var pitch: SFAcousticFeature { get }
  @NSCopying var voicing: SFAcousticFeature { get }
}
