
@available(iOS 10.0, *)
enum SFSpeechRecognitionTaskState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case starting
  case running
  case finishing
  case canceling
  case completed
}
@available(iOS 10.0, *)
class SFSpeechRecognitionTask : NSObject {
  var state: SFSpeechRecognitionTaskState { get }
  var isFinishing: Bool { get }
  func finish()
  var isCancelled: Bool { get }
  func cancel()
  var error: Error? { get }
}
@available(iOS 10.0, *)
protocol SFSpeechRecognitionTaskDelegate : NSObjectProtocol {
  @asyncHandler optional func speechRecognitionDidDetectSpeech(_ task: SFSpeechRecognitionTask)
  @asyncHandler optional func speechRecognitionTask(_ task: SFSpeechRecognitionTask, didHypothesizeTranscription transcription: SFTranscription)
  @asyncHandler optional func speechRecognitionTask(_ task: SFSpeechRecognitionTask, didFinishRecognition recognitionResult: SFSpeechRecognitionResult)
  optional func speechRecognitionTaskFinishedReadingAudio(_ task: SFSpeechRecognitionTask)
  optional func speechRecognitionTaskWasCancelled(_ task: SFSpeechRecognitionTask)
  @asyncHandler optional func speechRecognitionTask(_ task: SFSpeechRecognitionTask, didFinishSuccessfully successfully: Bool)
}
