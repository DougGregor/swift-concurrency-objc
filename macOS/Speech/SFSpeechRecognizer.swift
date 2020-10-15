
@available(macOS 10.15, *)
enum SFSpeechRecognizerAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case denied
  case restricted
  case authorized
}
@available(macOS 10.15, *)
class SFSpeechRecognizer : NSObject {
  class func supportedLocales() -> Set<Locale>
  class func authorizationStatus() -> SFSpeechRecognizerAuthorizationStatus
  class func requestAuthorization(_ handler: @escaping (SFSpeechRecognizerAuthorizationStatus) -> Void)
  init?(locale: Locale)
  var isAvailable: Bool { get }
  var locale: Locale { get }
  var supportsOnDeviceRecognition: Bool
  weak var delegate: @sil_weak SFSpeechRecognizerDelegate?
  var defaultTaskHint: SFSpeechRecognitionTaskHint
  func recognitionTask(with request: SFSpeechRecognitionRequest, resultHandler: @escaping (SFSpeechRecognitionResult?, Error?) -> Void) -> SFSpeechRecognitionTask
  func recognitionTask(with request: SFSpeechRecognitionRequest, delegate: SFSpeechRecognitionTaskDelegate) -> SFSpeechRecognitionTask
  var queue: OperationQueue
}
@available(macOS 10.15, *)
protocol SFSpeechRecognizerDelegate : NSObjectProtocol {
  optional func speechRecognizer(_ speechRecognizer: SFSpeechRecognizer, availabilityDidChange available: Bool)
}
