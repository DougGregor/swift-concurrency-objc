
extension NSPickerTouchBarItem {
  @available(macOS 10.15, *)
  enum SelectionMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case selectOne
    case selectAny
    case momentary
  }
  @available(macOS 10.15, *)
  enum ControlRepresentation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case expanded
    case collapsed
  }
}
@available(macOS 10.15, *)
class NSPickerTouchBarItem : NSTouchBarItem {
  convenience init(identifier: NSTouchBarItem.Identifier, labels: [String], selectionMode: NSPickerTouchBarItem.SelectionMode, target: Any?, action: Selector?)
  convenience init(identifier: NSTouchBarItem.Identifier, images: [NSImage], selectionMode: NSPickerTouchBarItem.SelectionMode, target: Any?, action: Selector?)
  var controlRepresentation: NSPickerTouchBarItem.ControlRepresentation
  var collapsedRepresentationLabel: String
  var collapsedRepresentationImage: NSImage?
  var selectedIndex: Int
  @NSCopying var selectionColor: NSColor?
  var selectionMode: NSPickerTouchBarItem.SelectionMode
  var numberOfOptions: Int
  func setImage(_ image: NSImage?, at index: Int)
  func image(at index: Int) -> NSImage?
  func setLabel(_ label: String, at index: Int)
  func label(at index: Int) -> String?
  weak var target: @sil_weak AnyObject?
  var action: Selector?
  var isEnabled: Bool
  func setEnabled(_ enabled: Bool, at index: Int)
  func isEnabled(at index: Int) -> Bool
}
