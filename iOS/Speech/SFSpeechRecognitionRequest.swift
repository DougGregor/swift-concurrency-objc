
@available(iOS 10.0, *)
class SFSpeechRecognitionRequest : NSObject {
  var taskHint: SFSpeechRecognitionTaskHint
  var shouldReportPartialResults: Bool
  var contextualStrings: [String]
  var interactionIdentifier: String?
  @available(iOS 13, *)
  var requiresOnDeviceRecognition: Bool
}
@available(iOS 10.0, *)
class SFSpeechURLRecognitionRequest : SFSpeechRecognitionRequest {
  init(url URL: URL)
  var url: URL { get }
}
@available(iOS 10.0, *)
class SFSpeechAudioBufferRecognitionRequest : SFSpeechRecognitionRequest {
  var nativeAudioFormat: AVAudioFormat { get }
  func append(_ audioPCMBuffer: AVAudioPCMBuffer)
  func appendAudioSampleBuffer(_ sampleBuffer: CMSampleBuffer)
  func endAudio()
}
