
@available(macOS 10.15, *)
class SFSpeechRecognitionRequest : NSObject {
  var taskHint: SFSpeechRecognitionTaskHint
  var shouldReportPartialResults: Bool
  var contextualStrings: [String]
  var interactionIdentifier: String?
  @available(macOS 10.15, *)
  var requiresOnDeviceRecognition: Bool
}
@available(macOS 10.15, *)
class SFSpeechURLRecognitionRequest : SFSpeechRecognitionRequest {
  init(url URL: URL)
  var url: URL { get }
}
@available(macOS 10.15, *)
class SFSpeechAudioBufferRecognitionRequest : SFSpeechRecognitionRequest {
  var nativeAudioFormat: AVAudioFormat { get }
  func append(_ audioPCMBuffer: AVAudioPCMBuffer)
  func appendAudioSampleBuffer(_ sampleBuffer: CMSampleBuffer)
  func endAudio()
}
