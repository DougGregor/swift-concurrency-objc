
class NSSpeechRecognizer : NSObject {
  func startListening()
  func stopListening()
  weak var delegate: @sil_weak NSSpeechRecognizerDelegate?
  var commands: [String]?
  var displayedCommandsTitle: String?
  var listensInForegroundOnly: Bool
  var blocksOtherRecognizers: Bool
}
protocol NSSpeechRecognizerDelegate : NSObjectProtocol {
  optional func speechRecognizer(_ sender: NSSpeechRecognizer, didRecognizeCommand command: String)
}
