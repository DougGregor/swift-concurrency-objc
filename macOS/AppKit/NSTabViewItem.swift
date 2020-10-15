
extension NSTabViewItem {
  enum State : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case selectedTab
    case backgroundTab
    case pressedTab
  }
}
class NSTabViewItem : NSObject, NSCoding {
  @available(macOS 10.10, *)
  convenience init(viewController: NSViewController)
  init(identifier: Any?)
  var identifier: Any?
  @NSCopying var color: NSColor
  var label: String
  @available(macOS 10.10, *)
  var image: NSImage?
  var view: NSView?
  @available(macOS 10.10, *)
  var viewController: NSViewController?
  var tabState: NSTabViewItem.State { get }
  var tabView: NSTabView? { get }
  weak var initialFirstResponder: @sil_weak NSView?
  @available(macOS 10.6, *)
  var toolTip: String?
  func drawLabel(_ shouldTruncateLabel: Bool, in labelRect: NSRect)
  func sizeOfLabel(_ computeMin: Bool) -> NSSize
}
