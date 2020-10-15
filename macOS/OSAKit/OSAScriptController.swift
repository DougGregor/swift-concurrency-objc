
enum OSAScriptState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case stopped
  case running
  case recording
}
class OSAScriptController : NSController {
  var scriptView: OSAScriptView?
  var resultView: NSTextView?
  @NSCopying var script: OSAScript?
  var language: OSALanguage?
  var scriptState: OSAScriptState { get }
  var isCompiling: Bool { get }
  @IBAction func compileScript(_ sender: Any?)
  @IBAction func recordScript(_ sender: Any?)
  @IBAction func runScript(_ sender: Any?)
  @IBAction func stopScript(_ sender: Any?)
}
