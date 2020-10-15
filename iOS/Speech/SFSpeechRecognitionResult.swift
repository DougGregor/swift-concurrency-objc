
@available(iOS 10.0, *)
class SFSpeechRecognitionResult : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var bestTranscription: SFTranscription { get }
  var transcriptions: [SFTranscription] { get }
  var isFinal: Bool { get }
}
