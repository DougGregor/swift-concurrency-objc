
extension NSToolbarItemGroup {
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
@available(macOS 10.5, *)
class NSToolbarItemGroup : NSToolbarItem {
  @available(macOS 10.15, *)
  convenience init(itemIdentifier: NSToolbarItem.Identifier, titles: [String], selectionMode: NSToolbarItemGroup.SelectionMode, labels: [String]?, target: Any?, action: Selector?)
  @available(macOS 10.15, *)
  convenience init(itemIdentifier: NSToolbarItem.Identifier, images: [NSImage], selectionMode: NSToolbarItemGroup.SelectionMode, labels: [String]?, target: Any?, action: Selector?)
  var subitems: [NSToolbarItem]
  @available(macOS 10.15, *)
  var controlRepresentation: NSToolbarItemGroup.ControlRepresentation
  @available(macOS 10.15, *)
  var selectionMode: NSToolbarItemGroup.SelectionMode
  @available(macOS 10.15, *)
  var selectedIndex: Int
  @available(macOS 10.15, *)
  func setSelected(_ selected: Bool, at index: Int)
  @available(macOS 10.15, *)
  func isSelected(at index: Int) -> Bool
}
