
class AMWorkflowController : NSController {
  var workflow: AMWorkflow?
  @IBOutlet var workflowView: AMWorkflowView?
  weak var delegate: @sil_weak AMWorkflowControllerDelegate?
  var canRun: Bool { get }
  var isRunning: Bool { get }
  var isPaused: Bool { get }
  @IBAction func run(_ sender: Any)
  @IBAction func stop(_ sender: Any)
  @IBAction func pause(_ sender: Any)
  @IBAction func step(_ sender: Any)
  @IBAction func reset(_ sender: Any)
}
struct __AMWorkflowControllerFlags {
  var shouldRunLocally: Int
  var isRunningLocally: Int
  var shouldDisplayProgressInMenuBar: Int
  var reserved: Int
  init()
  init(shouldRunLocally: Int, isRunningLocally: Int, shouldDisplayProgressInMenuBar: Int, reserved: Int)
}
struct __AMWorkflowControllerDelegateRespondTo {
  var workflowControllerDidAddWorkflow: Int
  var workflowControllerDidRemoveWorkflow: Int
  var workflowControllerWillRun: Int
  var workflowControllerWillStep: Int
  var workflowControllerWillStop: Int
  var workflowControllerWillPause: Int
  var workflowControllerDidRun: Int
  var workflowControllerDidStep: Int
  var workflowControllerDidStop: Int
  var workflowControllerDidPause: Int
  var workflowControllerWillRunAction: Int
  var workflowControllerDidRunAction: Int
  var workflowControllerDidError: Int
  var workflowControllerDidLogMessageOfTypeFromAction: Int
  var workflowControllerWillRunConversion: Int
  var workflowControllerDidRunConversion: Int
  var workflowControllerDidResumeWithAction: Int
  var reserved: Int
  init()
  init(workflowControllerDidAddWorkflow: Int, workflowControllerDidRemoveWorkflow: Int, workflowControllerWillRun: Int, workflowControllerWillStep: Int, workflowControllerWillStop: Int, workflowControllerWillPause: Int, workflowControllerDidRun: Int, workflowControllerDidStep: Int, workflowControllerDidStop: Int, workflowControllerDidPause: Int, workflowControllerWillRunAction: Int, workflowControllerDidRunAction: Int, workflowControllerDidError: Int, workflowControllerDidLogMessageOfTypeFromAction: Int, workflowControllerWillRunConversion: Int, workflowControllerDidRunConversion: Int, workflowControllerDidResumeWithAction: Int, reserved: Int)
}
protocol AMWorkflowControllerDelegate : NSObjectProtocol {
  optional func workflowControllerWillRun(_ controller: AMWorkflowController)
  optional func workflowControllerWillStop(_ controller: AMWorkflowController)
  @asyncHandler optional func workflowControllerDidRun(_ controller: AMWorkflowController)
  @asyncHandler optional func workflowControllerDidStop(_ controller: AMWorkflowController)
  @available(macOS 10.4, *)
  optional func workflowController(_ controller: AMWorkflowController, willRun action: AMAction)
  @available(macOS 10.4, *)
  @asyncHandler optional func workflowController(_ controller: AMWorkflowController, didRun action: AMAction)
  @asyncHandler optional func workflowController(_ controller: AMWorkflowController, didError error: Error)
}
extension NSObject {
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  class func workflowControllerWillRun(_ controller: AMWorkflowController)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  func workflowControllerWillRun(_ controller: AMWorkflowController)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  class func workflowControllerWillStop(_ controller: AMWorkflowController)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  func workflowControllerWillStop(_ controller: AMWorkflowController)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  class func workflowControllerDidRun(_ controller: AMWorkflowController)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  func workflowControllerDidRun(_ controller: AMWorkflowController)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  class func workflowControllerDidStop(_ controller: AMWorkflowController)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  func workflowControllerDidStop(_ controller: AMWorkflowController)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  class func workflowController(_ controller: AMWorkflowController, willRun action: AMAction)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  func workflowController(_ controller: AMWorkflowController, willRun action: AMAction)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  class func workflowController(_ controller: AMWorkflowController, didRun action: AMAction)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  func workflowController(_ controller: AMWorkflowController, didRun action: AMAction)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  class func workflowController(_ controller: AMWorkflowController, didError error: Error)
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use AMWorkflowControllerDelegate protocol.")
  func workflowController(_ controller: AMWorkflowController, didError error: Error)
}
