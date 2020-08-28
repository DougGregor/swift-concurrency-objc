
@available(macOS 10.15, *)
class SFTranscription : NSObject, NSCopying, NSSecureCoding {
  var formattedString: String { get }
  var segments: [SFTranscriptionSegment] { get }
  @available(macOS 10.15, *)
  var speakingRate: Double { get }
  @available(macOS 10.15, *)
  var averagePauseDuration: TimeInterval { get }
}
