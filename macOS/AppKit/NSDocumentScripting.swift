
extension NSDocument {
  var lastComponentOfFileName: String
  func handleSave(_ command: NSScriptCommand) -> Any?
  func handleClose(_ command: NSCloseCommand) -> Any?
  func handlePrint(_ command: NSScriptCommand) -> Any?
}
