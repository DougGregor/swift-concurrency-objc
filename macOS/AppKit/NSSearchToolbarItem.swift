
@available(macOS 11.0, *)
class NSSearchToolbarItem : NSToolbarItem {
  var searchField: NSSearchField
  var resignsFirstResponderWithCancel: Bool
  var preferredWidthForSearchField: CGFloat
  func beginSearchInteraction()
  func endSearchInteraction()
}
