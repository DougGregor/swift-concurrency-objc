
extension NSTouchBar {
  typealias CustomizationIdentifier = String
}
@available(macOS 10.12.2, *)
class NSTouchBar : NSObject, NSCoding {
  var customizationIdentifier: NSTouchBar.CustomizationIdentifier?
  var customizationAllowedItemIdentifiers: [NSTouchBarItem.Identifier]
  var customizationRequiredItemIdentifiers: [NSTouchBarItem.Identifier]
  var defaultItemIdentifiers: [NSTouchBarItem.Identifier]
  var itemIdentifiers: [NSTouchBarItem.Identifier] { get }
  var principalItemIdentifier: NSTouchBarItem.Identifier?
  var escapeKeyReplacementItemIdentifier: NSTouchBarItem.Identifier?
  var templateItems: Set<NSTouchBarItem>
  weak var delegate: @sil_weak NSTouchBarDelegate?
  func item(forIdentifier identifier: NSTouchBarItem.Identifier) -> NSTouchBarItem?
  var isVisible: Bool { get }
  @available(macOS 10.15, *)
  class var isAutomaticCustomizeTouchBarMenuItemEnabled: Bool
}

@available(macOS 10.12.2, *)
extension NSTouchBar : __DefaultCustomPlaygroundQuickLookable {
}
protocol NSTouchBarDelegate : NSObjectProtocol {
  @available(macOS 10.12.2, *)
  optional func touchBar(_ touchBar: NSTouchBar, makeItemForIdentifier identifier: NSTouchBarItem.Identifier) -> NSTouchBarItem?
}
protocol NSTouchBarProvider : NSObjectProtocol {
  @available(macOS 10.12.2, *)
  var touchBar: NSTouchBar? { get }
}
extension NSResponder : NSTouchBarProvider {
  @available(macOS 10.12.2, *)
  func makeTouchBar() -> NSTouchBar?
}
extension NSApplication {
  @available(macOS 10.12.2, *)
  var isAutomaticCustomizeTouchBarMenuItemEnabled: Bool
  @available(macOS 10.12.2, *)
  @IBAction func toggleTouchBarCustomizationPalette(_ sender: Any?)
}
