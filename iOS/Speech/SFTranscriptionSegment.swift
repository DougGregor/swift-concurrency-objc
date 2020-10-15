
@available(iOS 10.0, *)
class SFTranscriptionSegment : NSObject, NSCopying, NSSecureCoding {
  var substring: String { get }
  var substringRange: NSRange { get }
  var timestamp: TimeInterval { get }
  var duration: TimeInterval { get }
  var confidence: Float { get }
  var alternativeSubstrings: [String] { get }
  @available(iOS 13.0, *)
  var voiceAnalytics: SFVoiceAnalytics? { get }
}
