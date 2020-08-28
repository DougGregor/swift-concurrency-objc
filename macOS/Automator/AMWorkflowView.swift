
class AMWorkflowView : NSView {
  var isEditable: Bool
  weak var workflowController: @sil_weak AMWorkflowController?
}
struct __AMWorkflowViewFlags {
  var ignoreSubviewFrameChanges: Int
  var editingEnabled: Int
  var reserved: Int
  init()
  init(ignoreSubviewFrameChanges: Int, editingEnabled: Int, reserved: Int)
}
