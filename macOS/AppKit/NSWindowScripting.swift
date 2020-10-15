
extension NSWindow {
  var hasCloseBox: Bool { get }
  var hasTitleBar: Bool { get }
  var isFloatingPanel: Bool { get }
  var isMiniaturizable: Bool { get }
  var isModalPanel: Bool { get }
  var isResizable: Bool { get }
  var isZoomable: Bool { get }
  var orderedIndex: Int
  func setIsMiniaturized(_ flag: Bool)
  func setIsVisible(_ flag: Bool)
  func setIsZoomed(_ flag: Bool)
  func handleClose(_ command: NSCloseCommand) -> Any?
  func handlePrint(_ command: NSScriptCommand) -> Any?
  func handleSave(_ command: NSScriptCommand) -> Any?
}
