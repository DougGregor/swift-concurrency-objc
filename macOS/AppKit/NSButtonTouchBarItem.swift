
@available(macOS 10.15, *)
class NSButtonTouchBarItem : NSTouchBarItem {
  convenience init(identifier: NSTouchBarItem.Identifier, title: String, target: Any?, action: Selector?)
  convenience init(identifier: NSTouchBarItem.Identifier, image: NSImage, target: Any?, action: Selector?)
  convenience init(identifier: NSTouchBarItem.Identifier, title: String, image: NSImage, target: Any?, action: Selector?)
  var title: String
  var image: NSImage?
  @NSCopying var bezelColor: NSColor?
  weak var target: @sil_weak AnyObject?
  var action: Selector?
  var isEnabled: Bool
}
