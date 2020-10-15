
@available(iOS 10.0, *)
enum SFSpeechRecognitionTaskHint : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case dictation
  case search
  case confirmation
}
