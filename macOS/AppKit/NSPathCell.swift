
extension NSPathControl {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case standard
    case popUp
  }
}
@available(macOS 10.5, *)
class NSPathCell : NSActionCell, NSMenuItemValidation, NSOpenSavePanelDelegate {
  var pathStyle: NSPathControl.Style
  var url: URL?
  var allowedTypes: [String]?
  weak var delegate: @sil_weak NSPathCellDelegate?
  class var pathComponentCellClass: AnyClass { get }
  var pathComponentCells: [NSPathComponentCell]
  func rect(of cell: NSPathComponentCell, withFrame frame: NSRect, in view: NSView) -> NSRect
  func pathComponentCell(at point: NSPoint, withFrame frame: NSRect, in view: NSView) -> NSPathComponentCell?
  var clickedPathComponentCell: NSPathComponentCell? { get }
  func mouseEntered(with event: NSEvent, frame: NSRect, in view: NSView)
  func mouseExited(with event: NSEvent, frame: NSRect, in view: NSView)
  var doubleAction: Selector?
  @NSCopying var backgroundColor: NSColor?
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
}
protocol NSPathCellDelegate : NSObjectProtocol {
  @available(macOS 10.5, *)
  optional func pathCell(_ pathCell: NSPathCell, willDisplay openPanel: NSOpenPanel)
  @available(macOS 10.5, *)
  optional func pathCell(_ pathCell: NSPathCell, willPopUp menu: NSMenu)
}
