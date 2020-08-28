
@available(macOS 10.5, *)
class NSPathControl : NSControl {
  @available(macOS 10.10, *)
  var isEditable: Bool
  @available(macOS 10.10, *)
  var allowedTypes: [String]?
  @available(macOS 10.10, *)
  var placeholderString: String?
  @available(macOS 10.10, *)
  @NSCopying var placeholderAttributedString: NSAttributedString?
  var url: URL?
  var doubleAction: Selector?
  var pathStyle: NSPathControl.Style
  @available(macOS 10.10, *)
  var clickedPathItem: NSPathControlItem? { get }
  @available(macOS 10.10, *)
  var pathItems: [NSPathControlItem]
  @NSCopying var backgroundColor: NSColor?
  weak var delegate: @sil_weak NSPathControlDelegate?
  func setDraggingSourceOperationMask(_ mask: NSDragOperation, forLocal isLocal: Bool)
}
protocol NSPathControlDelegate : NSObjectProtocol {
  @available(macOS 10.10, *)
  optional func pathControl(_ pathControl: NSPathControl, shouldDrag pathItem: NSPathControlItem, with pasteboard: NSPasteboard) -> Bool
  @available(macOS 10.5, *)
  optional func pathControl(_ pathControl: NSPathControl, shouldDrag pathComponentCell: NSPathComponentCell, with pasteboard: NSPasteboard) -> Bool
  @available(macOS 10.5, *)
  optional func pathControl(_ pathControl: NSPathControl, validateDrop info: NSDraggingInfo) -> NSDragOperation
  @available(macOS 10.5, *)
  optional func pathControl(_ pathControl: NSPathControl, acceptDrop info: NSDraggingInfo) -> Bool
  @available(macOS 10.5, *)
  optional func pathControl(_ pathControl: NSPathControl, willDisplay openPanel: NSOpenPanel)
  @available(macOS 10.5, *)
  optional func pathControl(_ pathControl: NSPathControl, willPopUp menu: NSMenu)
}
extension NSPathControl {
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use -clickedPathItem instead")
  func clickedPathComponentCell() -> NSPathComponentCell?
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use -pathItems instead")
  func pathComponentCells() -> [NSPathComponentCell]
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use -setPathItems: instead")
  func setPathComponentCells(_ cells: [NSPathComponentCell])
}
