
@available(iOS 10.0, *)
class SFTranscription : NSObject, NSCopying, NSSecureCoding {
  var formattedString: String { get }
  var segments: [SFTranscriptionSegment] { get }
  @available(iOS 13.0, *)
  var speakingRate: Double { get }
  @available(iOS 13.0, *)
  var averagePauseDuration: TimeInterval { get }
}
